import 'package:components/screens/screens.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final TextInputType? keyBoardType;

  final IconData? suffixIcon;
  final IconData? icon;
  final obscureText;

  final String formValues;
  final Map<String, String> formPropiety;

  const TextFormFieldCustom({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.keyBoardType = TextInputType.name,
    this.suffixIcon,
    this.icon,
    this.obscureText = false, 
    required this.formValues, 
    required this.formPropiety,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      textCapitalization: TextCapitalization.words,
      obscureText: obscureText,
      keyboardType: keyBoardType,
      onChanged: (values)=>formPropiety[formValues]=values,
      validator: (value) {
        if (value == null) return "Este campo es necesario";
        return (value.length < 3) ? "Debe de ser mayor a tres letras" : null;
      },

      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon != null ? Icon(Icons.groups_outlined) : null,
        icon: icon != null ? Icon(Icons.assignment_ind_outlined) : null,
      ),
    );
  }
}
