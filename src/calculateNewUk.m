function [res] = calculateNewUk(left, step,  w, x)
U_dimension = 1;
alpha_MPG = 0.400000;
tmpGridSize = 401; 
res = ones(tmpGridSize, U_dimension);
t = left;
i = 1;
res(1, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 2;
res(2, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 3;
res(3, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 4;
res(4, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 5;
res(5, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 6;
res(6, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 7;
res(7, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 8;
res(8, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 9;
res(9, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 10;
res(10, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 11;
res(11, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 12;
res(12, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 13;
res(13, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 14;
res(14, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 15;
res(15, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 16;
res(16, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 17;
res(17, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 18;
res(18, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 19;
res(19, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 20;
res(20, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 21;
res(21, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 22;
res(22, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 23;
res(23, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 24;
res(24, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 25;
res(25, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 26;
res(26, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 27;
res(27, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 28;
res(28, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 29;
res(29, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 30;
res(30, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 31;
res(31, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 32;
res(32, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 33;
res(33, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 34;
res(34, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 35;
res(35, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 36;
res(36, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 37;
res(37, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 38;
res(38, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 39;
res(39, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 40;
res(40, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 41;
res(41, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 42;
res(42, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 43;
res(43, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 44;
res(44, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 45;
res(45, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 46;
res(46, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 47;
res(47, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 48;
res(48, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 49;
res(49, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 50;
res(50, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 51;
res(51, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 52;
res(52, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 53;
res(53, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 54;
res(54, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 55;
res(55, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 56;
res(56, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 57;
res(57, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 58;
res(58, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 59;
res(59, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 60;
res(60, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 61;
res(61, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 62;
res(62, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 63;
res(63, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 64;
res(64, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 65;
res(65, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 66;
res(66, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 67;
res(67, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 68;
res(68, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 69;
res(69, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 70;
res(70, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 71;
res(71, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 72;
res(72, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 73;
res(73, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 74;
res(74, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 75;
res(75, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 76;
res(76, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 77;
res(77, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 78;
res(78, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 79;
res(79, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 80;
res(80, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 81;
res(81, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 82;
res(82, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 83;
res(83, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 84;
res(84, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 85;
res(85, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 86;
res(86, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 87;
res(87, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 88;
res(88, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 89;
res(89, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 90;
res(90, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 91;
res(91, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 92;
res(92, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 93;
res(93, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 94;
res(94, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 95;
res(95, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 96;
res(96, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 97;
res(97, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 98;
res(98, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 99;
res(99, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 100;
res(100, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 101;
res(101, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 102;
res(102, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 103;
res(103, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 104;
res(104, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 105;
res(105, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 106;
res(106, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 107;
res(107, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 108;
res(108, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 109;
res(109, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 110;
res(110, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 111;
res(111, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 112;
res(112, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 113;
res(113, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 114;
res(114, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 115;
res(115, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 116;
res(116, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 117;
res(117, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 118;
res(118, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 119;
res(119, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 120;
res(120, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 121;
res(121, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 122;
res(122, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 123;
res(123, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 124;
res(124, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 125;
res(125, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 126;
res(126, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 127;
res(127, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 128;
res(128, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 129;
res(129, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 130;
res(130, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 131;
res(131, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 132;
res(132, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 133;
res(133, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 134;
res(134, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 135;
res(135, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 136;
res(136, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 137;
res(137, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 138;
res(138, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 139;
res(139, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 140;
res(140, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 141;
res(141, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 142;
res(142, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 143;
res(143, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 144;
res(144, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 145;
res(145, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 146;
res(146, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 147;
res(147, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 148;
res(148, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 149;
res(149, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 150;
res(150, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 151;
res(151, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 152;
res(152, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 153;
res(153, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 154;
res(154, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 155;
res(155, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 156;
res(156, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 157;
res(157, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 158;
res(158, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 159;
res(159, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 160;
res(160, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 161;
res(161, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 162;
res(162, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 163;
res(163, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 164;
res(164, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 165;
res(165, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 166;
res(166, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 167;
res(167, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 168;
res(168, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 169;
res(169, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 170;
res(170, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 171;
res(171, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 172;
res(172, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 173;
res(173, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 174;
res(174, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 175;
res(175, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 176;
res(176, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 177;
res(177, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 178;
res(178, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 179;
res(179, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 180;
res(180, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 181;
res(181, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 182;
res(182, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 183;
res(183, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 184;
res(184, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 185;
res(185, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 186;
res(186, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 187;
res(187, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 188;
res(188, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 189;
res(189, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 190;
res(190, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 191;
res(191, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 192;
res(192, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 193;
res(193, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 194;
res(194, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 195;
res(195, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 196;
res(196, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 197;
res(197, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 198;
res(198, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 199;
res(199, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 200;
res(200, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 201;
res(201, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 202;
res(202, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 203;
res(203, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 204;
res(204, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 205;
res(205, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 206;
res(206, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 207;
res(207, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 208;
res(208, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 209;
res(209, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 210;
res(210, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 211;
res(211, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 212;
res(212, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 213;
res(213, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 214;
res(214, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 215;
res(215, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 216;
res(216, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 217;
res(217, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 218;
res(218, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 219;
res(219, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 220;
res(220, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 221;
res(221, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 222;
res(222, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 223;
res(223, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 224;
res(224, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 225;
res(225, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 226;
res(226, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 227;
res(227, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 228;
res(228, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 229;
res(229, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 230;
res(230, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 231;
res(231, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 232;
res(232, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 233;
res(233, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 234;
res(234, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 235;
res(235, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 236;
res(236, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 237;
res(237, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 238;
res(238, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 239;
res(239, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 240;
res(240, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 241;
res(241, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 242;
res(242, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 243;
res(243, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 244;
res(244, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 245;
res(245, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 246;
res(246, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 247;
res(247, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 248;
res(248, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 249;
res(249, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 250;
res(250, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 251;
res(251, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 252;
res(252, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 253;
res(253, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 254;
res(254, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 255;
res(255, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 256;
res(256, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 257;
res(257, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 258;
res(258, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 259;
res(259, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 260;
res(260, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 261;
res(261, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 262;
res(262, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 263;
res(263, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 264;
res(264, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 265;
res(265, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 266;
res(266, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 267;
res(267, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 268;
res(268, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 269;
res(269, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 270;
res(270, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 271;
res(271, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 272;
res(272, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 273;
res(273, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 274;
res(274, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 275;
res(275, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 276;
res(276, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 277;
res(277, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 278;
res(278, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 279;
res(279, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 280;
res(280, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 281;
res(281, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 282;
res(282, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 283;
res(283, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 284;
res(284, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 285;
res(285, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 286;
res(286, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 287;
res(287, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 288;
res(288, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 289;
res(289, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 290;
res(290, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 291;
res(291, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 292;
res(292, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 293;
res(293, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 294;
res(294, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 295;
res(295, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 296;
res(296, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 297;
res(297, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 298;
res(298, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 299;
res(299, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 300;
res(300, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 301;
res(301, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 302;
res(302, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 303;
res(303, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 304;
res(304, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 305;
res(305, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 306;
res(306, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 307;
res(307, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 308;
res(308, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 309;
res(309, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 310;
res(310, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 311;
res(311, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 312;
res(312, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 313;
res(313, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 314;
res(314, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 315;
res(315, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 316;
res(316, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 317;
res(317, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 318;
res(318, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 319;
res(319, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 320;
res(320, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 321;
res(321, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 322;
res(322, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 323;
res(323, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 324;
res(324, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 325;
res(325, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 326;
res(326, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 327;
res(327, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 328;
res(328, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 329;
res(329, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 330;
res(330, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 331;
res(331, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 332;
res(332, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 333;
res(333, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 334;
res(334, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 335;
res(335, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 336;
res(336, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 337;
res(337, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 338;
res(338, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 339;
res(339, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 340;
res(340, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 341;
res(341, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 342;
res(342, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 343;
res(343, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 344;
res(344, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 345;
res(345, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 346;
res(346, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 347;
res(347, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 348;
res(348, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 349;
res(349, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 350;
res(350, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 351;
res(351, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 352;
res(352, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 353;
res(353, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 354;
res(354, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 355;
res(355, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 356;
res(356, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 357;
res(357, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 358;
res(358, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 359;
res(359, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 360;
res(360, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 361;
res(361, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 362;
res(362, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 363;
res(363, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 364;
res(364, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 365;
res(365, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 366;
res(366, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 367;
res(367, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 368;
res(368, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 369;
res(369, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 370;
res(370, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 371;
res(371, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 372;
res(372, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 373;
res(373, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 374;
res(374, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 375;
res(375, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 376;
res(376, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 377;
res(377, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 378;
res(378, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 379;
res(379, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 380;
res(380, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 381;
res(381, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 382;
res(382, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 383;
res(383, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 384;
res(384, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 385;
res(385, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 386;
res(386, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 387;
res(387, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 388;
res(388, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 389;
res(389, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 390;
res(390, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 391;
res(391, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 392;
res(392, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 393;
res(393, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 394;
res(394, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 395;
res(395, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 396;
res(396, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 397;
res(397, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 398;
res(398, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 399;
res(399, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 400;
res(400, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;
i = 401;
res(401, 1) = functionU(t, 1) - alpha_MPG*(2*functionU(t, 1) - w(i, 1));
t = t + step;

 end 
