% To try different Ld values
L   = 2.2;
v   = 1.0;
waypoints = [ ...
     0    0;
    10    5;
    20   10;
    30   15;
    40   20;
    50   25;
    55   30;
    50   35;
    45   40;
    40   45;
    35   50;
    30   55;
    25   60;
    20   65;
    15   70;
    10   75;
     5   80;
     0   85;
    -5   80;
   -10   75;
   -15   70;
   -20   65;
   -25   60;
   -30   55;
   -35   50;
   -30   45;
   -25   40;
   -20   35;
   -15   30;
   -10   25;
    -5   20;
     0   15;
     5   10;
    10    5;
    15    2;
    20    0;
    25   -5;
    30  -10;
    35  -15;
    40  -20;
    45  -25;
    50  -30;
    55  -25;
    60  -20;
    65  -15;
    70  -10;
    75   -5;
    80    0;
    80   10;
    80   20;
    75   25;
    70   30
];

Ld = 1;
out1 = sim('bicycle_model');   

Ld = 5;
out5 = sim('bicycle_model');

Ld = 10;
out10 = sim('bicycle_model');

% Extract paths
X1 = squeeze(out1.x.Data);
Y1 = squeeze(out1.y.Data);

X5 = squeeze(out5.x.Data);
Y5 = squeeze(out5.y.Data);

X10 = squeeze(out10.x.Data);
Y10 = squeeze(out10.y.Data);

% Plot all 3 paths
figure;
plot(X1, Y1, 'r-', 'LineWidth', 2, 'DisplayName', 'L_d = 1');
hold on;
plot(X5, Y5, 'g-', 'LineWidth', 2, 'DisplayName', 'L_d = 5');
plot(X10, Y10, 'b-', 'LineWidth', 2, 'DisplayName', 'L_d = 10');

% Add waypoints and labels
plot(waypoints(:,1), waypoints(:,2), 'k--o', 'DisplayName', 'Waypoints');
plot(X1(1), Y1(1), 'ko', 'MarkerSize', 8, 'DisplayName', 'Start');
plot(X10(end), Y10(end), 'kx', 'MarkerSize', 8, 'DisplayName', 'End');

xlabel('X Position [m]');
ylabel('Y Position [m]');
title('Vehicle Paths for Different Look-Ahead Distances');
grid on;
axis equal;
legend show;
