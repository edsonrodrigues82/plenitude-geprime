import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'btnovo_model.dart';
export 'btnovo_model.dart';

class BtnovoWidget extends StatefulWidget {
  const BtnovoWidget({
    super.key,
    required this.imagem,
    required this.texto,
    required this.corTexto,
  });

  final String? imagem;
  final String? texto;
  final Color? corTexto;

  @override
  State<BtnovoWidget> createState() => _BtnovoWidgetState();
}

class _BtnovoWidgetState extends State<BtnovoWidget> {
  late BtnovoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BtnovoModel());

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
        width: 90.0,
        height: 90.0,
        decoration: BoxDecoration(
          color: _model.mouseRegionHovered
              ? const Color(0xFFF4C3B1)
              : const Color(0x00DC3C00),
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: _model.mouseRegionHovered
                ? FlutterFlowTheme.of(context).cabeca1
                : const Color(0x00DC3C00),
          ),
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
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
              ),
              Text(
                valueOrDefault<String>(
                  widget.texto,
                  '-',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Oswald',
                      color: widget.corTexto,
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
