import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: QuizResultsScreen()));
}

class QuizResultsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF804ad4), Color(0xFF9556f7)],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -20,
                    left: -80,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.05),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: -60,
                    left: 120,
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.05),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 235,
                    child: Container(
                      width: 50,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.05),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 110,
                    right: -100,
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.05),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top:13,
                    left: 13,
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(height: 100),
              _buildActionButtons(),
            ],
          ),
          Column(children: [
            SizedBox(height: 90),
            _buildScoreCircle(),
            SizedBox(height: 30),
            _buildStatsCard(),
          ])
        ],
      ),
    );
  }

  Widget _buildScoreCircle() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 180,
          height: 180,
          decoration: BoxDecoration(
            color: Colors.white30,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 130,
          height: 130,
          decoration: BoxDecoration(
            color: Colors.white30,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Your Score\n',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.purple[600]),
                  ),
                  TextSpan(
                    text: '150',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.purple[600]),
                  ),
                  TextSpan(
                    text: 'pt',
                    style: TextStyle(fontSize: 12, color: Colors.purple[600]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStatsCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStatRow('Completion', '100%', Colors.purple),
              _buildStatRow('Correct', '13', Colors.green),
            ],
          ),
          Expanded(child: Container()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStatRow('Total Question', '20', Colors.purple),
              _buildStatRow('Wrong', '07', Colors.red),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatRow(String label, String value, Color color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 8),
            Text(value, style: TextStyle(fontWeight: FontWeight.bold, color: color)),
          ],
        ),
        Text("   ${label}", style: TextStyle(fontSize: 13, color: Colors.grey[600])),
        SizedBox(height: 12),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 16,
      runSpacing: 16,
      children: [
        _buildActionButton(Icons.rotate_left, 'Play Again', Color(0xFF427aa1)),
        _buildActionButton(Icons.check_circle_outline, 'Review Answer', Color(0xFFc38e70)),
        _buildActionButton(Icons.share, 'Share Score', Color(0xFF5e60ce)),
        _buildActionButton(Icons.picture_as_pdf, 'Generate PDF', Color(0xFF0496ff)),
        _buildActionButton(Icons.home, 'Home', Color(0xFFc879ff)),
        _buildActionButton(Icons.emoji_events, 'Leaderboard', Color(0xFF6c757d)),
      ],
    );
  }

  Widget _buildActionButton(IconData icon, String label, Color color) {
    return Container(
      width: 100,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 24),
          ),
          SizedBox(height: 4),
          Text(label, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
        ],
      ),
    );
  }
}
