#include <iostream>
#include <ctime>
#include <fstream>
#define MAX_VECTOR_SIZE 256
#include "/home/nagyd/VCL_LIB1/vectorclass.h"
#include "/home/nagyd/VCL_LIB1/vectormath_exp.h"
#include "/home/nagyd/VCL_LIB1/vectormath_trig.h"
#include "RKCK45_constants.h"

#define PI 3.14159265358979323

double * linspace(double a, double b, int numberOfInts);

template<int rollOut>
inline void F(Vec4d *xp, Vec4d *x, Vec4d *t, Vec4d *p)
{
	for (int i = 0, j = 0; j < rollOut; i += 2, j++)
	{
		xp[i] = x[i + 1];
		xp[i + 1] = x[i] * (1 - x[i] * x[i]) - p[j] * x[i+1] + 0.3 * cos(t[j]);
	}
	return;
}

template<int numberOfVariables, int numberOfEquations>
struct rkck45vars
{
	rkck45vars() { return; };
	//anonymous unions to save memory
	union
	{
		Vec4d error[numberOfVariables];
		Vec4d k2[numberOfVariables];
	};
	union
	{
		Vec4d tolerance[numberOfVariables];
		Vec4d k6[numberOfVariables];
		Vec4d minRelativeErrorReciprok[numberOfEquations];
	};
	union
	{
		Vec4d k5[numberOfVariables];
		Vec4d relativeErrorReciprok[numberOfVariables];
		Vec4d coeff[numberOfEquations];
	};
	Vec4d k1[numberOfVariables], k3[numberOfVariables], k4[numberOfVariables];
	Vec4d xTmp[numberOfVariables], x[numberOfVariables];
	Vec4d t[numberOfEquations], dt[numberOfEquations], p[numberOfEquations];
	Vec4d tTarget[numberOfEquations];
	Vec4i counter[numberOfEquations]; //counts number of events
};

int main()
{
	const int numberOfProblems = 46080;
	const int rollOut = 1;
	const int numberOfVariablesPerEquation = 2;
	const int numberOfVariablesTotal = numberOfVariablesPerEquation * rollOut;
	const int step = 4 * rollOut;
	const int numberOfTransient = 1024;
	const int numberOfSaves = 32;
	const double Tmax = (numberOfTransient + numberOfSaves) * 2 * PI;
	const double dtInitial = 0.01;
	const double relTolerance = 1e-9;
	const double absTolerance = 1e-9;
	const double maxIncrease = 5;
	const double maxDecrease = 0.2;
	const double safetyFactor = 0.8;
	const double dtMin = 1e-4;
	const double dtMax = 1e3;

	Vec4d x0[numberOfVariablesTotal];
	for (int k = 0; k < numberOfVariablesTotal;k+=numberOfVariablesPerEquation)
	{
		x0[k] = -0.5;
		x0[k + 1] = -0.1;
	}

	rkck45vars<numberOfVariablesTotal, rollOut> v;
	double * p_Parameters = linspace(0.2, 0.3, numberOfProblems);

	std::ofstream outputF("data.csv");
	
	clock_t SimulationStart;
	clock_t SimulationEnd;
	SimulationStart = clock();

	for (int i = 0; i < numberOfProblems; i += step) //sweep through every parameter
	{
		for (int l = 0, offset = i; l < rollOut; l++, offset += 4)
		{
			v.p[l].load_a(p_Parameters + offset); //loading parameters from alligned memory
			v.dt[l] = Vec4d(dtInitial);
			v.t[l] = Vec4d(0.);
			v.tTarget[l] = Vec4d(numberOfTransient * 2 * PI); //set first event time
			v.counter[l] = 0;
		}
		for (int l = 0; l < numberOfVariablesTotal; l++)
		{
			v.x[l] = x0[l];
		}

		while (true)
		{
			F<rollOut>(v.k1, v.x,v.t, v.p); //k1

			for (int k = 0, l = 0; k < rollOut; k++)
			{
				v.xTmp[l] = v.x[l] + v.dt[k] * (A11*v.k1[l]); l++;
				v.xTmp[l] = v.x[l] + v.dt[k] * (A11*v.k1[l]); l++;
			}
			F<rollOut>(v.k2, v.xTmp,v.t, v.p); //k2

			for (int k = 0, l = 0; k < rollOut; k++)
			{
				v.xTmp[l] = v.x[l] + v.dt[k] * (A21*v.k1[l] + A22 * v.k2[l]); l++;
				v.xTmp[l] = v.x[l] + v.dt[k] * (A21*v.k1[l] + A22 * v.k2[l]); l++;
			}
			F<rollOut>(v.k3, v.xTmp,v.t, v.p); //k3

			for (int k = 0, l = 0; k < rollOut; k++)
			{
				v.xTmp[l] = v.x[l] + v.dt[k] * (A31*v.k1[l] + A32 * v.k2[l] + A33 * v.k3[l]); l++;
				v.xTmp[l] = v.x[l] + v.dt[k] * (A31*v.k1[l] + A32 * v.k2[l] + A33 * v.k3[l]); l++;
			}
			F<rollOut>(v.k4, v.xTmp,v.t, v.p); //k4

			for (int k = 0, l = 0; k < rollOut; k++)
			{
				v.xTmp[l] = v.x[l] + v.dt[k] * (A41*v.k1[l] + A42 * v.k2[l] + A43 * v.k3[l] + A44 * v.k4[l]); l++;
				v.xTmp[l] = v.x[l] + v.dt[k] * (A41*v.k1[l] + A42 * v.k2[l] + A43 * v.k3[l] + A44 * v.k4[l]); l++;
			}
			F<rollOut>(v.k5, v.xTmp,v.t, v.p); //k5

			for (int k = 0, l = 0; k < rollOut; k++)
			{
				v.xTmp[l] = v.x[l] + v.dt[k] * (A51*v.k1[l] + A52 * v.k2[l] + A53 * v.k3[l] + A54 * v.k4[l] + A55 * v.k5[l]); l++;
				v.xTmp[l] = v.x[l] + v.dt[k] * (A51*v.k1[l] + A52 * v.k2[l] + A53 * v.k3[l] + A54 * v.k4[l] + A55 * v.k5[l]); l++;
			}
			F<rollOut>(v.k6, v.xTmp,v.t, v.p); //k6

			for (int k = 0; k < rollOut; k++) //5. order step and relative error calculation
			{
				int minIndex = numberOfVariablesPerEquation * k;
				for (int l = minIndex; l < minIndex + numberOfVariablesPerEquation; l++)
				{
					v.xTmp[l] = v.x[l] + v.dt[k] * (B11*v.k1[l] + B31 * v.k3[l] + B41 * v.k4[l] + B61 * v.k6[l]); //5. order step
					v.error[l] = v.dt[k] * (error1 * v.k1[l] + error3 * v.k3[l] + error4 * v.k4[l] + error5 * v.k5[l] + error6 * v.k6[l]);
					v.tolerance[l] = absTolerance + abs(v.xTmp[l]) * relTolerance;
					v.relativeErrorReciprok[l] = abs(v.tolerance[l] / v.error[l]);
				}

			}

			for (int k = 0, l = 0; k < rollOut; k++, l += numberOfVariablesPerEquation)
			{
				v.minRelativeErrorReciprok[k] = min(v.relativeErrorReciprok[l], v.relativeErrorReciprok[l + 1]);
			}

			for (int k = 0; k < rollOut; k++) //loop through equations, and calculate new dt
			{
				v.coeff[k] = exp(log((v.minRelativeErrorReciprok[k]))*0.2); //(1/error)^0.2
				Vec4db states = v.minRelativeErrorReciprok[k] >= 1. | v.dt[k] <= dtMin; //mask 1 accept, 0 decline
				v.coeff[k] = select(v.coeff[k] > maxIncrease, Vec4d(maxIncrease), v.coeff[k]); //if coeff > maxIncrease then coeff = maxIncrease
				v.coeff[k] = select(v.coeff[k] < maxDecrease, Vec4d(maxDecrease), v.coeff[k]); //if coeff < maxDecrease then coeff = maxDecrease

				int minIndex = numberOfVariablesPerEquation * k;
				for (int l = minIndex; l < minIndex + numberOfVariablesPerEquation; l++)
				{
					v.x[l] = select(states, v.xTmp[l], v.x[l]); //new x values
				}
				v.t[k] = select(states, v.t[k] + v.dt[k], v.t[k]); //new t values

				v.dt[k] = v.coeff[k] * v.dt[k] * safetyFactor; //calculate new dt
				v.dt[k] = select(v.dt[k] > dtMax, Vec4d(dtMax), v.dt[k]);
				v.dt[k] = select(v.dt[k] < dtMin, Vec4d(dtMin), v.dt[k]);
			}

			//saving results
			for (int k = 0; k < rollOut; k++)
			{
				Vec4db events = v.t[k] >= v.tTarget[k]; 
				if (horizontal_or(events)) 
				{
					for (int l = 0; l < 4; l++)  
					{
						//if t > tTarget then save values and new tTarget
						if (events[l] && v.counter[k][l]<numberOfSaves)
						{
							outputF << v.p[k][l] << "\t"<< v.x[k*2][l] << "\t" << v.x[k*2 + 1][l] << "\t" << v.t[k][l] / (2 * PI) - 1024 << std::endl;
						}
					}
					v.counter[k] = if_add(Vec4ib(events[0], events[1], events[2], events[3]), v.counter[k], Vec4i(1)); //counter incrementation
					v.tTarget[k] = if_add(events, v.tTarget[k], Vec4d(2 * PI)); //new tTarget
				}
				
				//if t + dt > tTarget then dt = tTarget - t
				events = v.t[k] + v.dt[k] >= v.tTarget[k]; 
				v.dt[k] = select(events, v.tTarget[k] - v.t[k], v.dt[k]); 
			}

			Vec4d minT = Vec4d(v.t[0]); //check end of integration
			for (int k = 1; k < rollOut; k++)
			{
				minT = min(minT, v.t[k]);
			}
			if (horizontal_and(minT >= Tmax)) break; //if minT > Tmax for every equation

		}//end of integration loop
	}

	SimulationEnd = clock() - SimulationStart;
	std::cout << "Elapsed tome: " << SimulationEnd/1000 << " ms" << std::endl;
	outputF.flush();
	outputF.close();
}


double * linspace(double a, double b, int numberOfInts)
{
	double * list = (double*)aligned_alloc(64, numberOfInts * sizeof(double));
	double d = (b - a) / double(numberOfInts - 1);
	list[0] = a;
	for (int i = 1; i < numberOfInts; i++)
	{
		list[i] = list[i - 1] + d;
	}
	return list;
}