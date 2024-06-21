import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lenovo/common/values/app_styles.dart';

class ExpandableDescription extends StatefulWidget {
  final String description;

  const ExpandableDescription({required this.description});

  @override
  _ExpandableDescriptionState createState() => _ExpandableDescriptionState();
}

class _ExpandableDescriptionState extends State<ExpandableDescription> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final List<String> words = widget.description.split(' ');
    final int visibleWords = _isExpanded ? words.length : 10;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            text: words.take(visibleWords).join(' '),
            style: TextStyle(
              color: Styles.textColor, // Adjust the text color here
              fontSize: 16, // Adjust the font size here
            ),
            children: <TextSpan>[
              if (!_isExpanded) ...[
                const TextSpan(
                  text: ' ...',
                  style: TextStyle(color: Colors.grey),
                ),
                TextSpan(
                  text: ' Read More',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16, // Adjust the font size here
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      setState(() {
                        _isExpanded = true;
                      });
                    },
                ),
              ],
            ],
          ),
        ),
        if (_isExpanded)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                words.skip(visibleWords).join(' '),
                style: TextStyle(
                  color: Styles.textColor, // Adjust the text color here
                  fontSize: 16,
                   // Adjust the font size here
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _isExpanded = false;
                  });
                },
                child: const Text(
                  'See Less',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16, // Adjust the font size here
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

