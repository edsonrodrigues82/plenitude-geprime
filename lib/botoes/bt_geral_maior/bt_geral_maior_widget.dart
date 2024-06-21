import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bt_geral_maior_model.dart';
export 'bt_geral_maior_model.dart';

class BtGeralMaiorWidget extends StatefulWidget {
  const BtGeralMaiorWidget({
    super.key,
    required this.imagem,
    required this.texto,
  });

  final String? imagem;
  final String? texto;

  @override
  State<BtGeralMaiorWidget> createState() => _BtGeralMaiorWidgetState();
}

class _BtGeralMaiorWidgetState extends State<BtGeralMaiorWidget> {
  late BtGeralMaiorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BtGeralMaiorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: SystemMouseCursors.click ?? MouseCursor.defer,
      onEnter: ((event) async {
        setState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        setState(() => _model.mouseRegionHovered = false);
      }),
      child: Container(
        width: 159.0,
        height: 57.0,
        decoration: BoxDecoration(
          color: _model.mouseRegionHovered
              ? const Color(0xFFF4C3B1)
              : const Color(0xFFB0B0B0),
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: _model.mouseRegionHovered
                ? FlutterFlowTheme.of(context).cabeca1
                : const Color(0xFFBCB9B9),
          ),
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  width: 40.0,
                  height: 35.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: Image.network(
                        widget.imagem!,
                      ).image,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Text(
                  valueOrDefault<String>(
                    widget.texto,
                    '-',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
