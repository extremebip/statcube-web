-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: remotemysql.com
-- Generation Time: Jul 09, 2022 at 11:13 AM
-- Server version: 8.0.13-4
-- PHP Version: 7.3.33-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `AH9w9W9dTm`
--

-- --------------------------------------------------------

--
-- Table structure for table `MsAdmin`
--

CREATE TABLE `MsAdmin` (
  `AdminID` int(11) NOT NULL,
  `AdminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `AdminEmail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `AdminPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MsAdmin`
--

INSERT INTO `MsAdmin` (`AdminID`, `AdminName`, `AdminEmail`, `AdminPassword`) VALUES
(1, 'Anthony Gilrandy Theo', 'anthony.theo@binus.edu', 'pass123'),
(2, 'Devita', 'devita02@binus.ac.id', 'pass123'),
(3, 'Dewi Puspita Tanurezal', 'dewi.tanurezal@binus.ac.id', 'pass123'),
(4, 'Steven', 'steven007@binus.ac.id', 'pass456'),
(5, 'Ircham Anindiya Kencana', 'ircham.kencana@binus.ac.id', 'pass123'),
(6, 'Nicholas', 'nicholas013@binus.ac.id', 'pass123');

-- --------------------------------------------------------

--
-- Table structure for table `MsCourse`
--

CREATE TABLE `MsCourse` (
  `CourseID` int(11) NOT NULL,
  `AdminID` int(11) NOT NULL,
  `CourseTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CourseDescription` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MsCourse`
--

INSERT INTO `MsCourse` (`CourseID`, `AdminID`, `CourseTitle`, `CourseDescription`) VALUES
(1, 3, 'Regression Analysis', 'This course comprises Simple Linear Regression, Multiple Linear Regression, Regression Diagnostics, Analysis of Collinear Data, Variable Selection Procedures. This course gives students knowledge and ability to apply concepts and application of regression using R language. This course relates to Multivariate Statistics Course.'),
(2, 1, 'Multivariate Statistic', 'This course comprises Multivariate Normal Distribution, Multivariate Analysis of Variance , Discriminant Analysis , Canonical Correlation, Factor Analysis, and Cluster Analysis. This course gives students knowledge about multivariate statistics methods and ability to analyze the multivariate data. This course requires that students have taken Matrix Algebra for Statistics and Probability and Statistics courses.'),
(3, 4, 'Applied Linear Algebra', 'This course comprises System of Linear Equation, Determinant of Matrix, Inverse of Matrix, Eigenvalues and Eigenvectors. This course gives the students a basic knowledge and some procedure in Linear Algebra that can use in applied mathematics. Besides that, this course is basic of advanced linear algebra.'),
(4, 2, 'Probability and Statistics', 'The course comprises real statistical problem from nature, business, economy, industry, and computer science. The course consists of presenting data in tables and charts, numerical descriptive statistics, basic probability, random variables, discrete and continuous probability distribution, sampling and sampling distribution, statistical estimation, and hypothesis test. In this course the student get the statistical terminology, interpret statistical terminology and use the decision statistical work in application. '),
(5, 4, 'Time Series Analysis', 'This course comprises Time Series Data: Examples and Basic Concepts, Trend Forecasting, Exponential Smoothing, Stationary Models, Nonstationary Models, Seasonal Models, Aberrant Observations. This course gives students knowledge about time series methods and ability to analyze time series data. This course also gives students knowledge about how to use R Software in analyze time series data. This course requires that students have taken Regression Analysis course.'),
(6, 2, 'Linear Model', 'This course comprises Introduction to Linear Model, The Multivariate Normal Distribution, Quadratic Forms in Normal Distribution, Full-Rank Linear Models, and Less-Than-Full-Rank Linear Models. This course gives an introduction to the process of building statistical models. This course is related to Linear Regression Course.'),
(7, 5, 'Statistical Quality Control', 'This course comprises about Modeling and Inferences about Process Quality, Control Charts, Capability Analysis and Multivariate Process Monitoring and Control. After completing this course, students are able to measure and evaluate the quality of a product, service, or process. This course needs understanding of basic probability and statistics theory that has been studied in previous courses.'),
(8, 6, 'Econometrics', 'This course comprises of An Introduction to Econometrics, Single-Equation Regression Model, Relaxing the Assumptions of the Classical Model, Panel Data Regression Models, Dynamic Econometric Models: Autoregressive and Distributed-Lag Models, Simultaneous Equations Models, and Vector Error Correction and Vector Autoregressive Models. This course requires that students have taken Regression Analysis course.'),
(9, 5, 'Statistical Process Control', 'This course comprises about the methods of process control in which statistical methods are employed, and applied in order to monitor and control a process. Monitoring and controlling the process ensures that it operates at its full potential. This course comprises an introduction to Statistical Process Control (SPC), the concepts of variability, the DMAIC process, univariate statistical process monitoring and control techniques, engineering process control and SPC, factorial and fractional factorial experiments for process design and improvement, process optimization with designed experiments, lot by lot acceptance sampling for attributes, and other acceptance sampling techniques. This course is a follow up of Statistical Quality Control course.'),
(12, 2, 'Data Mining', 'Data mining is the process of sorting through large data sets to identify patterns and relationships that can help solve business problems through data analysis. Data mining techniques and tools enable enterprises to predict future trends and make more-informed business decisions.');

-- --------------------------------------------------------

--
-- Table structure for table `MsRecommended`
--

CREATE TABLE `MsRecommended` (
  `CourseID` int(11) NOT NULL,
  `AdminID` int(11) NOT NULL,
  `CourseTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CourseDescription` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MsRecommended`
--

INSERT INTO `MsRecommended` (`CourseID`, `AdminID`, `CourseTitle`, `CourseDescription`) VALUES
(2, 1, 'Multivariate Statistic', 'This course comprises Multivariate Normal Distribution, Multivariate Analysis of Variance , Discriminant Analysis , Canonical Correlation, Factor Analysis, and Cluster Analysis. This course gives students knowledge about multivariate statistics methods and ability to analyze the multivariate data. This course requires that students have taken Matrix Algebra for Statistics and Probability and Statistics courses.'),
(4, 2, 'Probability and Statistics', 'The course comprises real statistical problem from nature, business, economy, industry, and computer science. The course consists of presenting data in tables and charts, numerical descriptive statistics, basic probability, random variables, discrete and continuous probability distribution, sampling and sampling distribution, statistical estimation, and hypothesis test. In this course the student get the statistical terminology, interpret statistical terminology and use the decision statistical work in application. '),
(5, 4, 'Time Series Analysis', 'This course comprises Time Series Data: Examples and Basic Concepts, Trend Forecasting, Exponential Smoothing, Stationary Models, Nonstationary Models, Seasonal Models, Aberrant Observations. This course gives students knowledge about time series methods and ability to analyze time series data. This course also gives students knowledge about how to use R Software in analyze time series data. This course requires that students have taken Regression Analysis course.'),
(7, 5, 'Statistical Quality Control', 'This course comprises about Modeling and Inferences about Process Quality, Control Charts, Capability Analysis and Multivariate Process Monitoring and Control. After completing this course, students are able to measure and evaluate the quality of a product, service, or process. This course needs understanding of basic probability and statistics theory that has been studied in previous courses.'),
(9, 5, 'Statistical Process Control', 'This course comprises about the methods of process control in which statistical methods are employed, and applied in order to monitor and control a process. Monitoring and controlling the process ensures that it operates at its full potential. This course comprises an introduction to Statistical Process Control (SPC), the concepts of variability, the DMAIC process, univariate statistical process monitoring and control techniques, engineering process control and SPC, factorial and fractional factorial experiments for process design and improvement, process optimization with designed experiments, lot by lot acceptance sampling for attributes, and other acceptance sampling techniques. This course is a follow up of Statistical Quality Control course.');

-- --------------------------------------------------------

--
-- Table structure for table `MsTopic`
--

CREATE TABLE `MsTopic` (
  `TopicID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `TopicTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TopicContent` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TopicThumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MsTopic`
--

INSERT INTO `MsTopic` (`TopicID`, `CourseID`, `TopicTitle`, `TopicContent`, `TopicThumbnail`) VALUES
(1, 1, 'Simple Linear Regression', 'Simple linear regression is used to estimate the relationship between two quantitative variables.', 'https://miro.medium.com/max/1400/1*I-MxKoiWxJXLfExpvbT1eQ.png'),
(2, 1, 'Multiple Linear Regression', 'Multiple linear regression refers to a statistical technique that is used to predict the outcome of a variable based on the value of two or more variables. It is sometimes known simply as multiple regression, and it is an extension of linear regression. The variable that we want to predict is known as the dependent variable, while the variables we use to predict the value of the dependent variable are known as independent or explanatory variables.', 'https://miro.medium.com/max/1400/1*a3HFulvxQQM32dHOY_Dtqw.jpeg'),
(4, 2, 'Multivariate Normal Distribution', 'A multivariate normal distribution is a vector in multiple normally distributed variables, such that any linear combination of the variables is also normally distributed.', 'https://qph.fs.quoracdn.net/main-qimg-5964cc20b80c4cd93312ba54e9bedd34-pjlq'),
(5, 2, 'Multivariate Analysis of Variance', 'Multivariate Analysis of Variance is a technique which determines the effects of independent categorical variables on multiple continuous dependent variables. It is usually used to compare several groups with respect to multiple continuous variables.The main distinction between Multivariate Analysis of Variance and Analysis of Variance is that several dependent variables are considered in Multivariate Analysis of Variance. While Analysis of Variance tests for inter-group differences between the mean values of one dependent variable, Multivariate Analysis of Variance tests for differences between centroid s - the vectors of the mean values of the dependent variables.', 'http://www.statistikian.com/wp-content/uploads/blogger/-qiq_E-sHNOQ/UKzPBk6Z98I/AAAAAAAABA4/ti-PHm-ODBo/s1600/zz7.jpg'),
(6, 2, 'Discriminant Analysis', 'Discriminant analysis builds a predictive model for group membership. The model is composed of a discriminant function (or, for more than two groups, a set of discriminant functions) based on linear combinations of the predictor variables that provide the best discrimination between the groups.', 'https://miro.medium.com/max/1200/1*GmQel2gpb48wj9YFacuD_w.png '),
(7, 3, 'System of Linear Equation', 'A system of equations is a set or collection of equations that you deal with all together at once. Linear equations (ones that graph as straight lines) are simpler than non-linear equations, and the simplest linear system is one with two equations and two variables.', 'https://d20khd7ddkh5ls.cloudfront.net/equations_graphed.jpeg'),
(8, 3, 'Determinant of Matrix', 'The determinant is a scalar value that is a function of the entries of a square matrix. It allows characterizing some properties of the matrix and the linear map represented by the matrix. In particular, the determinant is nonzero if and only if the matrix is invertible and the linear map represented by the matrix is an isomorphism. The determinant of a product of matrices is the product of their determinants (the preceding property is a corollary of this one). The determinant of a matrix A is denoted det(A), det A, or |A|.', 'https://programmathically.com/wp-content/uploads/2020/11/matrix-determinant.jpg'),
(9, 3, 'Inverse of Matrix', 'Inverse of Matrix for a matrix A is denoted by A-1. The inverse of a 2 × 2 matrix can be calculated using a simple formula. Further, to find the inverse of a 3 × 3 matrix, we need to know about the determinant and adjoint of the matrix. The inverse of matrix is another matrix, which on multiplying with the given matrix gives the multiplicative identity.The inverse of matrix is used of find the solution of linear equations through the matrix inversion method.', 'https://www.onlinemath4all.com/images/inverseofamatrix.png'),
(10, 4, 'Presenting Data in Table and Chart', 'Data are usually ungrouped as they are given for each observation. Grouped data are presented by frequency table, which can be one-dimensional or two-dimensional, depending on the number of characteristics (variables) used for counting the observations.', 'https://img.indezine.com/v7/www.indezine.com/products/powerpoint/learn/chartsdiagrams/images/chart-data-table-options01.png?w=488'),
(11, 4, 'Basic Probability', 'Probability is the measure of the likelihood that an event will occur in a Random Experiment. Probability is quantified as a number between 0 and 1, where, loosely speaking, 0 indicates impossibility and 1 indicates certainty. The higher the probability of an event, the more likely it is that the event will occur.', 'https://i.imgur.com/egqrj58.jpg '),
(12, 4, 'Confidence Interval Estimation', 'A confidence interval is an estimate of an interval in statistics that may contain a population parameter. The unknown population parameter is found through a sample parameter calculated from the sampled data.', 'https://sixsigmastudyguide.com/wp-content/uploads/2021/11/pi1.png '),
(13, 5, 'Exponential Smoothing', 'Exponential smoothing is a forecasting method for univariate time series data. This method produces forecasts that are weighted averages of past observations where the weights of older observations exponentially decrease.', 'https://www.statology.org/wp-content/uploads/2020/03/expSmooth2.png'),
(14, 5, 'Stationary Models', 'A stationary time series is one whose statistical properties such as mean, variance, autocorrelation, etc are all constant over time. Most statistical forecasting methods are based on the assumption that the time series can be rendered approximately stationary  through the use of mathematical transformations. A stationarized series is relatively easy to predict.', 'https://miro.medium.com/max/390/0*3XXCQed3bPHrD1lt.png'),
(15, 5, 'Seasonal Models', 'Seasonality in a time series is a regular pattern of changes that repeats over S time periods, where S defines the number of time periods until the pattern repeats again.', 'https://anomaly.io/wp-content/uploads/2015/12/multiplicative-model.png'),
(16, 6, 'Generalized Inverse Matrices', 'A generalized inverse is an extension of the concept of inverse that applies to square singular matrices and rectangular matrices. There are many definitions of generalized inverses, all of which reduce to the usual inverse when the matrix is square and nonsingular.', 'https://miro.medium.com/max/1400/1*jIu4Dp4ScERUFssZ2PP17w.png'),
(17, 6, 'Regression for the Full Rank Model', 'Linear models are full rank when there are an adequate number of observations per factor level combination to be able to estimate all terms included in the model.', 'Linear models are full rank when there are an adequate number of observations per factor level combination to be able to estimate all terms included in the model.'),
(18, 6, 'Regression on Dummy Variables', 'A dummy variable is a numerical variable used in regression analysis to represent subgroups of the sample in your study. In research design, a dummy variable is often used to distinguish different treatment groups. In the simplest case, we would use a 0,1 dummy variable where a person is given a value of 0 if they are in the control group or a 1 if they are in the treated group. Dummy variables are useful because they enable us to use a single regression equation to represent multiple groups.  The dummy variables act like ‘switches’ that turn various parameters on and off in an equation.', 'https://www3.nd.edu/~meg/LSR/SAS/IMG00023.GIF '),
(19, 7, 'Control Chart for Variable', 'A quality control chart is a graphical representation of whether a firm\'s products or processes are meeting their intended specifications. If problems appear to arise, the quality control chart can be used to identify the degree by which they vary from those specifications and help in error correction.', 'https://cdn1.byjus.com/wp-content/uploads/2018/11/maths/2016/06/03072323/Control-Charts.jpg'),
(20, 7, 'Process and Measurement System Capability Analysis', 'Capability analysis refers to a set of tools and calculations used in determining whether a system meets certain specification requirements. The evaluation entails statistical analysis of how well the process meets the given requirements. A set of data on the system or process is required to carry out the calculation.', 'https://www.spcforexcel.com/files/field/image/what-is-cpk.jpg'),
(21, 7, 'Cumulative Sum and Exponentially Weighted Moving Average Control Chart', 'The Exponentially Weighted Moving Average (EWMA) is a statistic for monitoring the process that averages the data in a way that gives less and less weight to data as they are further removed in time.', 'https://sixsigmastudyguide.com/wp-content/uploads/2014/06/EWMA-Chart.png'),
(22, 8, 'Panel Data Regression Models', 'Panel data regression is a powerful way to control dependencies of unobserved, independent variables on a dependent variable, which can lead to biased estimators in traditional linear regression models. Data Panel Regression is a combination of cross section data and time series, where the same unit cross section is measured at different times. So in other words, panel data is data from some of the same individuals observed in a certain period of time.', 'https://ds4ps.org/pe4ps-textbook/docs/p-040-fixed-effects_files/figure-html/unnamed-chunk-23-1.png'),
(23, 8, 'Simultaneous Equation Models', 'Simultaneous equations models are a type of statistical model in which the dependent variables are functions of other dependent variables, rather than just independent variables. This means some of the explanatory variables are jointly determined with the dependent variable, which in economics usually is the consequence of some underlying equilibrium mechanism.', 'http://faculty.washington.edu/rons/software/lseq5.gif'),
(24, 8, 'Vector Error Correction and Autoregressive Models', 'Vector auto-regressive (VAR) integrated model comprises multiple time series and is quite a useful tool for forecasting model. VAR model involves multiple independent variables and therefore has more than one equations. Each equation uses as its explanatory variables lags of all the variables and likely a deterministic trend. Time series models for VAR are usually based on applying VAR to stationary series with first differences to original series and because of that, there is always a possibility of loss of information about the relationship among integrated series.', 'https://www.aptech.com/wp-content/uploads/2013/11/tar_plot_1.png'),
(25, 9, 'Variability', 'Variation is a disparity between an actual measure of a product characteristic and its target value. Excessive variation is outside the upper and lower acceptable limits established for a product specification, which can lead to product discard or salvage. Therefore, a key manufacturing performance objective is the establishment of stable and predictable processes that limits variation to what can be described as random, minimum variation around target values.', 'https://i0.wp.com/www.techqualitypedia.com/wp-content/uploads/2020/04/Process-Spread.jpg?fit=1024%2C627&ssl=1'),
(26, 9, 'DMAIC Process', 'Define, measure, analyze, improve, and control (DMAIC) is a data-driven quality strategy used to improve processes. The letters in the acronym represent the five phases that make up the process, It is an integral part of a Six Sigma initiative, but in general can be implemented as a standalone quality improvement procedure or as part of other process improvement initiatives.', 'https://assets.6sigma.us/wp-content/uploads/2022/03/DMAIC-approch-info-scaled.webp?x54476'),
(27, 9, 'Process Optimization with Designed Experiment', 'The term experiment is defined as the systematic procedure carried out under controlled conditions in order to discover an unknown effect, to test or establish a hypothesis, or to illustrate a known effect. When analyzing a process, experiments are often used to evaluate which process inputs have a significant impact on the process output, and what the target level of those inputs should be to achieve a desired result (output). Experiments can be designed in many different ways to collect this information. Design of Experiments (DOE) is also referred to as Designed Experiments or Experimental Design - all of the terms have the same meaning.', 'https://media.moresteam.com/main/pics/toolbox/tools-DOE1.webp'),
(28, 10, 'Research Design', 'Research design is the framework of research methods and techniques chosen by a researcher. The design allows researchers to hone in on research methods that are suitable for the subject matter and set up their studies for success.The design of a research topic explains the type of research (experimental, survey research, correlational, semi-experimental, review) and also its sub-type (experimental design, research problem, descriptive case-study).', 'https://i2.wp.com/nursingeducationexpert.com/wp-content/uploads/2018/10/ResearchProcess.jpg?resize=405%2C341&ssl=1'),
(29, 10, 'The Next 10 Customer', 'A data consumer can be any user, application, or system that uses data collected by another system or stored in a data repository. Within an organization or a company, many systems can be considered data producers as they collect or generate data that is stored to be later used by data consumers.', 'https://digitalmarketingcommunity.com/wp-content/uploads/2019/03/Customers%E2%80%99-top-priority-in-next-12-months-2019.jpg'),
(30, 10, 'Measurement and Scaling', 'A measurement scale is used to qualify or quantify data variables in statistics. It determines the kind of techniques to be used for statistical analysis. There are different kinds of measurement scales, and the type of data being collected determines the kind of measurement scale to be used for statistical measurement. These measurement scales are four in number, namely; nominal scale, ordinal scale, interval scale, and ratio scale. The measurement scales are used to measure qualitative and quantitative data. With nominal and ordinal scale being used to measure qualitative data while interval and ratio scales are used to measure quantitative data.', 'https://image.shutterstock.com/image-vector/smiley-face-satisfaction-emoticon-happiness-260nw-1587487075.jpg'),
(31, 4, 'Hypothesis Testing', 'Hypothesis testing is an act in statistics whereby an analyst tests an assumption regarding a population parameter. The methodology employed by the analyst depends on the nature of the data used and the reason for the analysis. Hypothesis testing is used to assess the plausibility of a hypothesis by using sample data. Such data may come from a larger population, or from a data-generating process. Statistical analysts test a hypothesis by measuring and examining a random sample of the population being analyzed. All analysts use a random population sample to test two different hypotheses: the null hypothesis and the alternative hypothesis. The null hypothesis is usually a hypothesis of equality between population parameters; e.g., a null hypothesis may state that the population mean return is equal to zero. The alternative hypothesis is effectively the opposite of a null hypothesis (e.g., the population mean return is not equal to zero). Thus, they are mutually exclusive, and only one can be true. However, one of the two hypotheses will always be true.', 'https://miro.medium.com/max/862/1*VXxdieFiYCgR6v7nUaq01g.jpeg'),
(32, 12, 'Steps of Data Mining', 'There are 6 steps in data mining :\r\n1.) Define the problems\r\n2.) Identify required data\r\n3.) Prepare and pre-processs\r\n4.) Model the data\r\n5.) Train and test\r\n6.) Verify and deploy', 'https://yukcoding.id/wp-content/uploads/2020/12/data-mining.png');

-- --------------------------------------------------------

--
-- Table structure for table `MsUser`
--

CREATE TABLE `MsUser` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `UserPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `UserEmail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `UserSubscriptionEndDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MsUser`
--

INSERT INTO `MsUser` (`UserID`, `UserName`, `UserPassword`, `UserEmail`, `UserSubscriptionEndDate`) VALUES
(1, 'Devita', 'devita20', 'devita@gmail.com', '2022-07-15'),
(2, 'Anthony', 'AAAaaa123', 'anthony.theo@binus.ac.id', '2022-07-23'),
(3, 'test', 'test1234', 'test@gmail.com', '2022-07-15'),
(4, 'Albertos', 'AAAaaa123', 'albertos1@gmail.com', '2022-07-16'),
(5, 'Ray Sharon', 'AAAaaa123', 'ray.sharon@gmail.com', '2022-07-21'),
(6, 'Regan', 'AAAaaa123', 'regan325@gmail.com', '2022-07-15'),
(7, 'Natasha', 'BBBbbb123', 'natasha1@binus.ac.id', NULL),
(8, 'Ircham', 'Ircham123456789', 'Ircham@yahoo.com', '2022-07-16'),
(9, 'dewi', 'password2', 'dewipt@gmail.com', '2022-07-20'),
(14, 'Testing', 'Test12345678', 'Test@yahoo.com', NULL),
(15, 'Dev', 'devita20', 'dev@gmail.com', '2022-07-16'),
(16, 'Holland', 'Holland123', 'Holland@yahoo.com', '2022-07-16'),
(17, 'Bakery', 'Bakery1234', 'Bakery@yahoo.com', NULL),
(18, 'Steven', 'zxczxc123', 'steven@gmail.com', '2022-07-21'),
(19, 'tester', 'tester123', 'tester@gmail.xom', '2022-07-16'),
(20, 'Test', 'test2000', 'testing@gmail.com', NULL),
(21, 'Kintan', 'Kintan123', 'Kintan@yahoo.com', '2022-07-16'),
(22, 'Pipsy', 'AAAaaa123', 'pipsy@gmail.com', '2022-07-16'),
(23, 'devita', 'devita2000', 'devitaaa@gmail.com', '2022-07-18'),
(24, 'Ebin', 'ebin123123', 'ebintest@gmail.com', '2022-07-20'),
(25, 'a', 'aaaaaaa1', 'aa@gmail.com', NULL),
(26, 'nicho', 'abcabc123', 'abc@abc.com', '2022-07-21'),
(27, 'Nicho', 'nicho123', 'Nicho@nicho.com', NULL),
(28, 'Nicho', 'nicho123', 'Nicho@nicho.com', NULL),
(29, 'Nicho', 'nicho123', 'Nicho@nicho.com', NULL),
(30, 'Nicho', 'nicho123', 'Nicho@nicho.com', NULL),
(31, 'Tony Stark', 'tonystark1', 'tonystark@gmail.com', '2022-07-22'),
(32, 'test1', 'test1234', 'test1@gmail.com', '2022-07-23'),
(33, 'Tom Cruise', 'tomcruise2', 'tom@gmail.com', '2022-07-23');

-- --------------------------------------------------------

--
-- Table structure for table `TrDiscussion`
--

CREATE TABLE `TrDiscussion` (
  `DiscussionID` int(11) NOT NULL,
  `TopicID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `DiscussionDate` datetime NOT NULL,
  `DiscussionTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DiscussionContent` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TrDiscussion`
--

INSERT INTO `TrDiscussion` (`DiscussionID`, `TopicID`, `UserID`, `DiscussionDate`, `DiscussionTitle`, `DiscussionContent`) VALUES
(2, 2, 2, '2022-06-14 00:00:00', 'So, Multiple Linear Regression is similar to linear equation?', 'Title, but linear equation with multiple dimensions.'),
(3, 4, 2, '2022-06-15 12:43:26', 'Why do we learn this topic?', 'Why is this topic placed first in this course? Why is Multivariate Normal Distribution important in Multivariate Analysis?'),
(4, 1, 2, '2022-06-16 05:30:35', 'New Discussion Title', 'This is a test content.'),
(5, 4, 2, '2022-06-16 05:44:51', 'Difference between regular normal distribution?', 'Example Example Example Example Example Example Example Example example example example example example example'),
(6, 26, 2, '2022-06-16 10:55:57', 'New Discussion Here', 'This is a test discussion'),
(7, 28, 22, '2022-06-16 13:13:16', 'Steps to do at designing research', 'What are the steps required to design a research?'),
(8, 28, 22, '2022-06-16 13:17:12', 'new title for discussion', 'content for the discussion here'),
(9, 2, 1, '2022-06-18 00:19:53', 'Test Discussion Title', 'Testing Discussion Content - lorem ipsum'),
(14, 7, 1, '2022-06-23 04:13:58', 'Testing Add Discussion Title', 'Testing Add Discussion Content - Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
(15, 34, 2, '2022-06-23 04:43:50', 'New Discussion', 'This is a new discussion');

-- --------------------------------------------------------

--
-- Table structure for table `TrPayment`
--

CREATE TABLE `TrPayment` (
  `PaymentID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `PaymentMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PaymentDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TrPayment`
--

INSERT INTO `TrPayment` (`PaymentID`, `UserID`, `PaymentMethod`, `PaymentDate`) VALUES
(2, 2, 'Mobile BCA', '2022-06-15 19:46:55'),
(3, 6, 'KlikBCA', '2022-06-15 21:44:36'),
(4, 3, 'BCA', '2022-06-15 15:46:36'),
(5, 3, 'BCA', '2022-06-15 18:37:25'),
(6, 1, 'BCA', '2022-06-15 18:56:05'),
(7, 1, 'BCA', '2022-06-15 19:04:41'),
(8, 1, 'DBS', '2022-06-15 19:04:56'),
(9, 2, 'DBS', '2022-06-15 19:35:31'),
(10, 4, 'BCA', '2022-06-16 06:13:15'),
(11, 8, 'BCA', '2022-06-16 06:51:22'),
(12, 16, 'BCA', '2022-06-16 07:07:36'),
(13, 15, 'BCA', '2022-06-16 07:51:49'),
(14, 18, 'DBS', '2022-06-16 08:11:26'),
(15, 19, 'DBS', '2022-06-16 08:22:37'),
(16, 21, 'BCA', '2022-06-16 11:58:26'),
(17, 22, 'MANDIRI', '2022-06-16 13:11:47'),
(18, 23, 'BCA', '2022-06-18 00:40:41'),
(19, 9, 'CIMB NIAGA', '2022-06-20 04:46:15'),
(20, 25, 'BCA', '2022-06-20 19:21:57'),
(21, 24, 'CIMB NIAGA', '2022-06-20 19:27:56'),
(22, 20, 'MANDIRI', '2022-06-20 19:35:32'),
(23, 20, 'BCA', '2022-06-20 19:41:22'),
(24, -1, 'MANDIRI', '2022-06-21 03:32:22'),
(25, 5, 'BCA', '2022-06-21 03:34:22'),
(26, 18, 'BCA', '2022-06-21 09:44:56'),
(27, 26, 'BNI', '2022-06-21 13:25:28'),
(28, 31, 'BNI', '2022-06-22 20:25:56'),
(29, 2, 'BCA', '2022-06-23 04:41:25'),
(30, 32, 'BNI', '2022-06-23 06:23:32'),
(31, 2, 'DBS', '2022-06-23 06:36:47'),
(32, 33, 'BNI', '2022-06-23 06:43:29'),
(33, 33, 'DBS', '2022-06-23 06:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `TrPost`
--

CREATE TABLE `TrPost` (
  `PostID` int(11) NOT NULL,
  `DiscussionID` int(11) NOT NULL,
  `AdminID` int(11) DEFAULT NULL,
  `UserID` int(11) NOT NULL,
  `PostContent` text COLLATE utf8_unicode_ci NOT NULL,
  `PostDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TrPost`
--

INSERT INTO `TrPost` (`PostID`, `DiscussionID`, `AdminID`, `UserID`, `PostContent`, `PostDate`) VALUES
(1, 1, NULL, 2, 'I feel the same thing too. After looking at the next topic, I feel like the author missed some things that must be explained first.', '2022-06-15 14:03:47'),
(2, 1, NULL, 2, 'Most likely the course must be made in a rush.', '2022-06-15 19:51:20'),
(3, 1, 2, 2, 'This is a test post', '2022-06-15 19:54:48'),
(4, 1, NULL, 2, 'Why is the post above me is deleted?', '2022-06-15 19:57:34'),
(8, 3, NULL, 14, 'We learn this topic, to know that the data in multivariate should in Normal Distribution', '2022-06-16 04:28:53'),
(9, 1, NULL, 18, 'I feel otherwise, the content is great.', '2022-06-16 08:12:30'),
(18, 7, NULL, 22, 'I suppose we first start by finding the problems first.', '2022-06-16 13:13:45'),
(20, 2, NULL, 1, 'I think both are similar', '2022-06-18 00:20:39'),
(21, 3, NULL, 2, 'Testing add forum comment - lorem ipsum', '2022-06-21 07:02:28'),
(22, 3, NULL, 1, 'Testing add forum comment - lorem ipsum', '2022-06-21 07:07:18'),
(23, 5, NULL, 1, 'Test forum comments       Test forum comments       Test forum comments      \r\nTest forum commentsTest forum commentsTest forum comments', '2022-06-21 07:27:57'),
(24, 5, NULL, 1, '       Test forum comments     Test forum comments     Test forum comments     Test forum comments     Test forum comments\r\n\r\nTest forum commentsTest forum commentsTest forum comments', '2022-06-21 07:28:52'),
(25, 4, 1, 31, 'ini buat gw test delete doang', '2022-06-23 04:50:46'),
(26, 4, NULL, 2, 'This is a test post', '2022-06-23 05:18:42'),
(27, 4, 1, 2, 'A A A A A', '2022-06-23 05:39:17'),
(28, 4, 4, 33, 'The content is boring and short!', '2022-06-23 06:46:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `MsAdmin`
--
ALTER TABLE `MsAdmin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `MsCourse`
--
ALTER TABLE `MsCourse`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `MsTopic`
--
ALTER TABLE `MsTopic`
  ADD PRIMARY KEY (`TopicID`);

--
-- Indexes for table `MsUser`
--
ALTER TABLE `MsUser`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `TrDiscussion`
--
ALTER TABLE `TrDiscussion`
  ADD PRIMARY KEY (`DiscussionID`);

--
-- Indexes for table `TrPayment`
--
ALTER TABLE `TrPayment`
  ADD PRIMARY KEY (`PaymentID`);

--
-- Indexes for table `TrPost`
--
ALTER TABLE `TrPost`
  ADD PRIMARY KEY (`PostID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `MsAdmin`
--
ALTER TABLE `MsAdmin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `MsCourse`
--
ALTER TABLE `MsCourse`
  MODIFY `CourseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `MsTopic`
--
ALTER TABLE `MsTopic`
  MODIFY `TopicID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `MsUser`
--
ALTER TABLE `MsUser`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `TrDiscussion`
--
ALTER TABLE `TrDiscussion`
  MODIFY `DiscussionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `TrPayment`
--
ALTER TABLE `TrPayment`
  MODIFY `PaymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `TrPost`
--
ALTER TABLE `TrPost`
  MODIFY `PostID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
