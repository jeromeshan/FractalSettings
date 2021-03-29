using System;

public class FunctionParams: INotifyPropertyChanged
{
    public Color color;
    public int T;
    public double dt;
    public double D;
    public int N;
    public double sigma;
    public double b;
    public double s;

    public FunctionParams(Color color, int t, double dt, double d, int n, double sigma, double b, double s)
    {
        this.color = color;
        T = t;
        this.dt = dt;
        D = d;
        N = n;
        this.sigma = sigma;
        this.b = b;
        this.s = s;
    }
}
