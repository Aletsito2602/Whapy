import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'terminosycondiciones_model.dart';
export 'terminosycondiciones_model.dart';

class TerminosycondicionesWidget extends StatefulWidget {
  const TerminosycondicionesWidget({super.key});

  @override
  State<TerminosycondicionesWidget> createState() =>
      _TerminosycondicionesWidgetState();
}

class _TerminosycondicionesWidgetState
    extends State<TerminosycondicionesWidget> {
  late TerminosycondicionesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TerminosycondicionesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Material(
        color: Colors.transparent,
        elevation: 5.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.9,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          alignment: const AlignmentDirectional(0.0, 1.0),
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Container(
                      width: 50.0,
                      height: 4.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 15.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Terminos y condiciones',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 30.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                TextSpan(
                                  text: '',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 30.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    lineHeight: 1.1,
                                  ),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: const AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: Text(
                                'Este Acuerdo es un contrato legalmente vinculante y usted tiene el deber de leerlo antes de acceder a los servicios ofrecidos por la Compañía. Al utilizar los Servicios, usted acepta los términos y condiciones contenidos en este Acuerdo.\n\nLa Compañía se reserva el derecho de suspender, reemplazar, modificar, enmendar o rescindir este Acuerdo en cualquier momento y a su sola y absoluta discreción. En caso de que la Compañía reemplace, modifique o enmiende este Acuerdo, su uso continuo de los Servicios después de un cambio en la Fecha de entrada en vigencia de dichos cambios constituirá su aceptación de cualquier reemplazo, modificación o enmienda a este Acuerdo.\n\nRepresentaciones comerciales Al utilizar los Servicios, usted declara que tiene al menos dieciocho (18) años de edad, está en pleno uso de sus facultades mentales y tiene la capacidad de aceptar y cumplir los términos y condiciones contenidos en este Acuerdo. Si utiliza los Servicios en nombre de una entidad comercial u otro tercero, declara que tiene autoridad real para actuar como agente de esa entidad comercial o tercero y que tiene el derecho y la capacidad de aceptar y obligar a ese tercero o entidad comercial a cumplir los términos de este Acuerdo en su nombre.\n\nUsted declara que su uso de los Servicios no viola ninguna ley, reglamento, ordenanza, estatuto o tratado aplicable a personas o entidades comerciales ubicadas en la jurisdicción donde usted reside. Además, declara que los términos de cualquier acuerdo preexistente no le prohíben celebrar este Acuerdo.\n\nLicencia limitada La Compañía le otorga una licencia limitada, no exclusiva, no sublicenciable, intransferible, revocable y libre de regalías para utilizar los Servicios con los fines habituales y previstos. Se le prohíbe expresamente extraer, enmarcar, piratear, realizar ingeniería inversa, rastrear o agregar los Servicios o el sitio web de la Compañía, ya sea en su totalidad o en parte, sin el consentimiento previo por escrito de la Compañía.\n\nUsted reconoce y acepta que su uso limitado de los Servicios no le otorga ninguna licencia ni derecho de propiedad intelectual sobre ninguna tecnología, propiedad intelectual, derechos de autor, marcas comerciales o secretos comerciales de la Compañía o de cualquier tercero contratista de la misma. Usted reconoce y acepta que su uso de los Servicios está limitado por los términos de este Acuerdo, y acepta expresamente no utilizar los Servicios de ninguna manera que no esté expresamente autorizada por los términos de este Acuerdo. La Compañía se reserva todos los derechos no expresamente otorgados a través de este Acuerdo. Esta licencia es revocable en cualquier momento y cualquier derecho no expresamente otorgado en este Acuerdo queda reservado para la Compañía.\n\nModificaciones de servicios y precios Los precios de nuestros productos están sujetos a cambios sin previo aviso. Nos reservamos el derecho de modificar o discontinuar el Servicio (o cualquier parte o contenido del mismo) en cualquier momento sin previo aviso.\n\nNo seremos responsables ante usted ni ante ningún tercero por ninguna modificación, cambio de precio, suspensión o interrupción del Servicio.\n\nEducación FundedFy es una empresa educativa que brinda educación a sus usuarios y otorga premios por su desempeño en cuentas de trading demo con capital virtual simulado.\n\nReembolsos Una vez realizado el pago de su plan de evaluación, no se procesarán reembolsos.\n\n– Reembolsos después de completar con éxito la evaluación\nNo ofrecemos reembolsos de la tarifa de desafío para nuestro programa de 1 paso. Los comerciantes reciben recompensas únicamente por su desempeño durante la etapa de financiación (fase 2).\n\n– Error de transacción\nFundedFy no es responsable de errores de transacciones entre el usuario y diferentes redes de criptomonedas.\n\nPautas La Compañía publicará las pautas asociadas con los Servicios en su sitio web y por correo electrónico al convertirse en Trader. Estas pautas, que pueden cambiar periódicamente a discreción exclusiva de la Compañía, se incorporan en su totalidad a este Acuerdo. La Compañía no realiza promesas ni garantías, expresas o implícitas, con respecto a promesas de empleo futuro como Trader, pagos monetarios o cualquier otra forma de compensación o recompensa por su desempeño como Trader.\n\nUsted reconoce y acepta que el sitio web de la Compañía, sus proveedores y licenciantes se reservan expresamente todos los derechos de propiedad intelectual sobre todos los textos, programas, productos, procesos, tecnología, contenido y otros materiales que aparecen en el sitio web de la Compañía. El acceso a este sitio web no confiere, ni se considerará que confiere, a nadie ninguna licencia con respecto a ninguno de los derechos de propiedad intelectual de la Compañía o de terceros. Todos los derechos, incluidos los derechos de autor, en este sitio web son de nuestra propiedad o nos los han otorgado proveedores externos. Cualquier uso de este sitio web o su contenido, incluida su copia o almacenamiento parcial, que no sea para uso personal y no comercial, está prohibido sin el permiso de la Compañía. No puede modificar, distribuir ni volver a publicar nada en este sitio web para ningún propósito. Los nombres y logotipos de la Compañía y todos los productos y servicios relacionados, así como nuestros lemas, son marcas comerciales o marcas de servicio de la Compañía o están autorizados por la Compañía. Todas las demás marcas son propiedad de sus respectivas compañías. No se otorga ninguna licencia de marca comercial o marca de servicio en relación con los materiales contenidos en el sitio web de la Compañía. El acceso al sitio web de la Compañía no autoriza a nadie a utilizar ningún nombre, logotipo o marca de ninguna manera.\n\nTodos los materiales, incluidas imágenes, textos, ilustraciones, diseños, íconos, fotografías, programas, clips de audio o descargas, videoclips y otros materiales que forman parte de este sitio web (colectivamente, el «Contenido»), están destinados únicamente para uso personal y no comercial. No se le transfiere ningún derecho, título o interés en ningún material o software descargado como resultado de dicha descarga o copia. No puede reproducir (excepto como se indica anteriormente), publicar, transmitir, distribuir, exhibir, modificar, crear trabajos derivados, vender o participar en cualquier venta o explotación de cualquier manera, en su totalidad o en parte, ninguno de los contenidos, el sitio web de la Compañía o cualquier software relacionado. Todo el software utilizado en el sitio web de la Compañía es propiedad de la Compañía o sus proveedores. Cualquier otro uso, incluida la reproducción, modificación, distribución, transmisión, republicación, exhibición o ejecución del Contenido en el sitio web de la Compañía está estrictamente prohibido. A menos que se indique lo contrario, todo el Contenido está protegido por derechos de autor, marca registrada y/o otra propiedad intelectual que pertenece, está controlada o tiene licencia de la Compañía, sus afiliadas o terceros que nos han otorgado licencias para usar sus materiales.\n\nDeclaración de divulgación Antes de decidir participar en los mercados financieros, debe considerar cuidadosamente sus objetivos de inversión, su nivel de experiencia y su tolerancia al riesgo. Lo más importante es que no invierta dinero que no pueda permitirse perder.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
