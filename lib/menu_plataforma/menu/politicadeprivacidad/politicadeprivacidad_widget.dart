import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'politicadeprivacidad_model.dart';
export 'politicadeprivacidad_model.dart';

class PoliticadeprivacidadWidget extends StatefulWidget {
  const PoliticadeprivacidadWidget({super.key});

  @override
  State<PoliticadeprivacidadWidget> createState() =>
      _PoliticadeprivacidadWidgetState();
}

class _PoliticadeprivacidadWidgetState
    extends State<PoliticadeprivacidadWidget> {
  late PoliticadeprivacidadModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PoliticadeprivacidadModel());

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
                                  text: 'Politica de privacidad',
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
                                'Este Acuerdo es un contrato legalmente vinculante y usted tiene el deber de leerlo antes de acceder a los servicios ofrecidos por la Compañía. Al utilizar los Servicios, usted acepta los términos y condiciones contenidos en este Acuerdo.\n\nLa Compañía se reserva el derecho de suspender, reemplazar, modificar, enmendar o rescindir este Acuerdo en cualquier momento y a su sola y absoluta discreción. En caso de que la Compañía reemplace, modifique o enmiende este Acuerdo, su uso continuo de los Servicios después de un cambio en la Fecha de entrada en vigencia de dichos cambios constituirá su aceptación de cualquier reemplazo, modificación o enmienda a este Acuerdo.\n\nRepresentaciones comerciales\nAl utilizar los Servicios, usted declara que tiene al menos dieciocho (18) años de edad, está en pleno uso de sus facultades mentales y tiene la capacidad de aceptar y cumplir los términos y condiciones contenidos en este Acuerdo. Si utiliza los Servicios en nombre de una entidad comercial u otro tercero, declara que tiene autoridad real para actuar como agente de esa entidad comercial o tercero y que tiene el derecho y la capacidad de aceptar y obligar a ese tercero o entidad comercial a cumplir los términos de este Acuerdo en su nombre.\n\nUsted declara que su uso de los Servicios no viola ninguna ley, reglamento, ordenanza, estatuto o tratado aplicable a personas o entidades comerciales ubicadas en la jurisdicción donde usted reside. Además, declara que los términos de cualquier acuerdo preexistente no le prohíben celebrar este Acuerdo.\n\nLicencia limitada\nLa Compañía le otorga una licencia limitada, no exclusiva, no sublicenciable, intransferible, revocable y libre de regalías para utilizar los Servicios con los fines habituales y previstos. Se le prohíbe expresamente extraer, enmarcar, piratear, realizar ingeniería inversa, rastrear o agregar los Servicios o el sitio web de la Compañía, ya sea en su totalidad o en parte, sin el consentimiento previo por escrito de la Compañía.\n\nUsted reconoce y acepta que su uso limitado de los Servicios no le otorga ninguna licencia ni derecho de propiedad intelectual sobre ninguna tecnología, propiedad intelectual, derechos de autor, marcas comerciales o secretos comerciales de la Compañía o de cualquier tercero contratista de la misma. Usted reconoce y acepta que su uso de los Servicios está limitado por los términos de este Acuerdo, y acepta expresamente no utilizar los Servicios de ninguna manera que no esté expresamente autorizada por los términos de este Acuerdo. La Compañía se reserva todos los derechos no expresamente otorgados a través de este Acuerdo.\nEsta licencia es revocable en cualquier momento y cualquier derecho no expresamente otorgado en este Acuerdo queda reservado para la Compañía.\n\nModificaciones de servicios y precios\nLos precios de nuestros productos están sujetos a cambios sin previo aviso. Nos reservamos el derecho de modificar o discontinuar el Servicio (o cualquier parte o contenido del mismo) en cualquier momento sin previo aviso.\n\nNo seremos responsables ante usted ni ante ningún tercero por ninguna modificación, cambio de precio, suspensión o interrupción del Servicio.\n\nEducación\nFundedFy es una empresa educativa que brinda educación a sus usuarios y otorga premios por su desempeño en cuentas de trading demo con capital virtual simulado.\n\nReembolsos\nUna vez realizado el pago de su plan de evaluación, no se procesarán reembolsos.\n\n– Reembolsos después de completar con éxito la evaluación\nNo ofrecemos reembolsos de la tarifa de desafío para nuestro programa de 1 paso. Los comerciantes reciben recompensas únicamente por su desempeño durante la etapa de financiación (fase 2).\n\n– Error de transacción\nFundedFy no es responsable de errores de transacciones entre el usuario y diferentes redes de criptomonedas.\n\nPautas\nLa Compañía publicará las pautas asociadas con los Servicios en su sitio web y por correo electrónico al convertirse en Trader. Estas pautas, que pueden cambiar periódicamente a discreción exclusiva de la Compañía, se incorporan en su totalidad a este Acuerdo. La Compañía no realiza promesas ni garantías, expresas o implícitas, con respecto a promesas de empleo futuro como Trader, pagos monetarios o cualquier otra forma de compensación o recompensa por su desempeño como Trader.\n\nUsted reconoce y acepta que el sitio web de la Compañía, sus proveedores y licenciantes se reservan expresamente todos los derechos de propiedad intelectual sobre todos los textos, programas, productos, procesos, tecnología, contenido y otros materiales que aparecen en el sitio web de la Compañía. El acceso a este sitio web no confiere, ni se considerará que confiere, a nadie ninguna licencia con respecto a ninguno de los derechos de propiedad intelectual de la Compañía o de terceros. Todos los derechos, incluidos los derechos de autor, en este sitio web son de nuestra propiedad o nos los han otorgado proveedores externos. Cualquier uso de este sitio web o su contenido, incluida su copia o almacenamiento parcial, que no sea para uso personal y no comercial, está prohibido sin el permiso de la Compañía. No puede modificar, distribuir ni volver a publicar nada en este sitio web para ningún propósito.\nLos nombres y logotipos de la Compañía y todos los productos y servicios relacionados, así como nuestros lemas, son marcas comerciales o marcas de servicio de la Compañía o están autorizados por la Compañía. Todas las demás marcas son propiedad de sus respectivas compañías. No se otorga ninguna licencia de marca comercial o marca de servicio en relación con los materiales contenidos en el sitio web de la Compañía. El acceso al sitio web de la Compañía no autoriza a nadie a utilizar ningún nombre, logotipo o marca de ninguna manera.\n\nTodos los materiales, incluidas imágenes, textos, ilustraciones, diseños, íconos, fotografías, programas, clips de audio o descargas, videoclips y otros materiales que forman parte de este sitio web (colectivamente, el «Contenido»), están destinados únicamente para uso personal y no comercial. No se le transfiere ningún derecho, título o interés en ningún material o software descargado como resultado de dicha descarga o copia. No puede reproducir (excepto como se indica anteriormente), publicar, transmitir, distribuir, exhibir, modificar, crear trabajos derivados, vender o participar en cualquier venta o explotación de cualquier manera, en su totalidad o en parte, ninguno de los contenidos, el sitio web de la Compañía o cualquier software relacionado. Todo el software utilizado en el sitio web de la Compañía es propiedad de la Compañía o sus proveedores. Cualquier otro uso, incluida la reproducción, modificación, distribución, transmisión, republicación, exhibición o ejecución del Contenido en el sitio web de la Compañía está estrictamente prohibido. A menos que se indique lo contrario, todo el Contenido está protegido por derechos de autor, marca registrada y/o otra propiedad intelectual que pertenece, está controlada o tiene licencia de la Compañía, sus afiliadas o terceros que nos han otorgado licencias para usar sus materiales.  Declaración de divulgación\nAntes de decidir participar en los mercados financieros, debe considerar cuidadosamente sus objetivos de inversión, su nivel de experiencia y su tolerancia al riesgo. Lo más importante es que no invierta dinero que no pueda permitirse perder.\n\nExiste una exposición considerable al riesgo en cualquier transacción extrabursátil, que incluye, entre otros, apalancamiento, solvencia, protección regulatoria limitada y volatilidad del mercado que puede afectar sustancialmente el precio de los productos negociados.\n\nAdemás, la naturaleza apalancada de las operaciones extrabursátiles implica que cualquier movimiento del mercado tendrá un efecto igualmente proporcional sobre sus fondos, lo que puede jugar tanto en su contra como a su favor.\n\n Existen riesgos asociados con el uso de un sistema de comercio basado en Internet, incluidos, entre otros, fallas de hardware, software y conexión a Internet. La Compañía no se hace responsable por fallas o demoras en la comunicación al operar a través de Internet. La Compañía emplea sistemas de respaldo y planes de contingencia para minimizar la posibilidad de fallas del sistema.\n\nDuración y condiciones\nEl plazo de este Acuerdo comenzará cuando usted compre un Servicio ofrecido a través de la Compañía y continuará hasta que la Compañía cancele su acceso a los Servicios o deje de usarlos.\n\nLa Compañía se reserva el derecho de cancelar los Servicios o su acceso al sitio web de la Compañía a su sola y absoluta discreción y sin previo aviso.\n\nExención de garantías y limitación de responsabilidad\nUsted reconoce y acepta que el servicio y el sitio web de la empresa se proporcionan «tal como están» y sin garantía de ningún tipo, incluidas, entre otras, garantías de título, comerciabilidad, precisión, idoneidad para un fin determinado, seguridad y no infracción. En la medida en que lo permita la ley, usted reconoce que la empresa no será responsable de ningún reclamo, daño, juicio, obligación u honorario que surja de o esté relacionado con la información del sitio web y su uso o acceso al servicio o al sitio web de la empresa, incluidos, entre otros, daños compensatorios, daños consecuentes, daños especiales, daños incidentales, daños punitivos, daños ejemplares, costos y honorarios de abogados, daños que surjan de errores u omisiones y daños que surjan de la falta de disponibilidad del sitio web o del tiempo de inactividad.\n\nFuerza mayor\nLa Compañía no será responsable ante el Comerciante por cualquier reclamo, pérdida, daño, costo o gasto, incluyendo honorarios de abogados, causados ​​directa o indirectamente por cualquier evento, acción u omisión, incluyendo, entre otros, reclamos, pérdidas, daños, costos o gastos resultantes de disturbios civiles, guerras, insurrecciones, intervenciones internacionales, acciones gubernamentales (incluyendo, entre otros, controles de cambio, confiscaciones, nacionalizaciones, devaluaciones), desastres naturales, eventos de fuerza mayor, condiciones del mercado, incapacidad para comunicarse con cualquier parte relevante, o cualquier retraso, interrupción, falla o mal funcionamiento de cualquier sistema de transmisión o comunicación o instalación informática, ya sea propiedad de la Compañía, el Comerciante o un proveedor de servicios externo.\n\nDivisibilidad\nEn el caso de que cualquier término o condición de este Acuerdo sea considerado inválido o inaplicable por el tribunal de jurisdicción competente, los términos y condiciones restantes de este Acuerdo permanecerán en pleno vigor y efecto.\n\nInterpretación\nEste Acuerdo se considerará redactado por ambas partes y los términos y condiciones de este Acuerdo no se interpretarán en contra de su redactor.\n\nAsignación\nSe le prohíbe expresamente ceder sus derechos y obligaciones en virtud de este Acuerdo. La Compañía se reserva el derecho de ceder sus derechos y obligaciones en virtud de este Acuerdo, incluso en caso de venta de la Compañía o sus Servicios.\n\nExención\nNingún término o condición de este Acuerdo o incumplimiento de este Acuerdo se considerará renunciado o consentido a menos que dicha renuncia se haga por escrito y esté firmada por la parte a ser acusada.\n\nAcuerdo completo\nEste Acuerdo constituye el acuerdo completo entre la Compañía y el Comerciante con respecto al uso de los Servicios y reemplaza todos los entendimientos, acuerdos o representaciones anteriores entre la Compañía y el Comerciante, ya sean escritos u orales.\n\nCompensación\nUsted acepta indemnizar, defender y eximir de responsabilidad a FundedFy y a nuestra empresa matriz, subsidiarias, afiliadas, socios, funcionarios, directores, agentes, contratistas, licenciatarios, proveedores de servicios, subcontratistas, proveedores, pasantes y empleados, de cualquier reclamo o demanda, incluidos los honorarios razonables de abogados, realizados por cualquier tercero debido a o que surja de su incumplimiento de estos Términos de servicio o los documentos que incorporan por referencia, o su violación de cualquier ley o los derechos de un tercero.\n\nPosibilidad de separación\nSi se determina que alguna disposición de estos Términos de Servicio es ilegal, nula o inaplicable, dicha disposición será, no obstante, ejecutable en la máxima medida permitida por la ley aplicable, y la parte inaplicable se considerará separada de estos Términos de Servicio; dicha determinación no afectará la validez y aplicabilidad de las demás disposiciones restantes.\n\nUsos prohibidos durante la etapa de financiación (fase 2)\nSe le prohíbe expresamente utilizar los Servicios para violar cualquier ley, estatuto, ordenanza, regulación o tratado, ya sea local, estatal, provincial, nacional o internacional, o para violar los derechos de un tercero, incluidos, entre otros, derechos de propiedad intelectual, derechos de privacidad, derechos de publicidad u otros derechos personales o de propiedad.\n\nAdemás, se le prohíbe expresamente extraer, rastrear, enmarcar, vincular sin autorización, agregar, piratear, realizar ataques de denegación de servicio (DOS), ingeniería inversa o eludir las medidas de protección tecnológica de los Servicios o el sitio web de la Compañía.\nTambién se le prohíbe utilizar los Servicios o el sitio web de la Compañía para transmitir correos electrónicos comerciales no solicitados a terceros o Comerciantes de la Compañía. Si bien la Compañía no es responsable de ningún contenido publicado por sus Comerciantes y no tiene la obligación afirmativa de monitorear dicho contenido, se reserva el derecho de eliminarlo.\n\n– Usos prohibidos durante la etapa de financiación (fase 2)\nTiene estrictamente prohibido emplear cualquier estrategia comercial relacionada con las siguientes operaciones:\n– Aprovechar errores o latencias en los precios y/o plataformas proporcionadas por el Broker.\n– Utilizar información no pública y/o privilegiada.\n– Operaciones anticipadas ejecutadas en otros lugares.\n– Operar de cualquier forma que ponga en peligro la relación que la Cuenta Propietaria tiene con un bróker o pueda resultar en la cancelación de operaciones.\n– Operar de cualquier forma que genere problemas regulatorios para el bróker.\n– Utilizando cualquier estrategia de terceros : estrategia ya preparada o una comercializada para pasar cuentas de evaluación.\n– Gestión de terceros: copia de operaciones de otros traders.\n– Grid Trading: Grid Trading es una estrategia de trading prohibida debido a los riesgos potenciales que implica. Implica colocar órdenes inversas de compra y venta en el mismo instrumento con el mismo riesgo o uno similar, lo que puede conducir a manipulación del mercado, apalancamiento excesivo, inestabilidad del mercado y posibles ganancias sin riesgo. Para evitar pérdidas significativas y apalancamiento excesivo, es esencial tener una estrategia de gestión de riesgos bien definida.\n– Martingala: Las Condiciones de Uso de FundedFy prohíben el uso de Martingala como estrategia de trading. La Martingala se basa en aumentar el tamaño de la inversión después de cada pérdida, con la expectativa de que una operación ganadora recupere todas las pérdidas anteriores y genere una ganancia. Este tipo de actividad se considera una apuesta y es extremadamente arriesgada, ya que puede generar pérdidas significativas y la pérdida de todo el capital. Es esencial tener una estrategia clara de gestión de riesgos y evitar invertir todo el capital en una sola operación.\nEs esencial tener una estrategia clara de gestión de riesgos y evitar invertir todo el capital en una sola operación.\n– Compartir o vender cuentas: compartir o vender cuentas financiadas de una persona a otra va en contra de nuestros Términos de Servicio y dará lugar a la prohibición de FundedFy.\n– Colusión entre usuarios: Un individuo o un grupo de individuos pueden participar en una estrategia comercial conocida como “operaciones de cuentas”. Esto implica abrir múltiples cuentas en una institución financiera y ejecutar operaciones en la misma dirección (es decir, comprar o vender) en el mismo activo en todas las cuentas. Esta práctica se considera una forma de manipulación del mercado.\n– Cobertura o cobertura grupal en múltiples cuentas: una persona o un grupo de personas pueden emplear una estrategia comercial en la que abren múltiples cuentas con una institución financiera y ejecutan operaciones en direcciones opuestas (es decir, compra y venta) en el mismo activo en todas las cuentas. En el mercado real, esto no generaría ninguna ganancia ya que las posiciones están cubiertas en ambas direcciones. Sin embargo, al operar con una empresa de financiación, una cuenta generaría una pérdida para la empresa, mientras que la otra generaría una ganancia, lo que daría como resultado ganancias sin riesgo.\n\n– Uso de datos diferidos: es el uso de una fuente de datos que presenta un retraso o desfase en la entrega de datos de mercado, como precios de acciones o volúmenes de negociación. Esto le otorga a un operador una ventaja injusta sobre otros operadores que deben utilizar datos de mercado en tiempo real. Esto se considera poco ético y no está permitido en el mercado financiero real.\n– Operar en gráficos retrasados: Operar en gráficos con retraso o desfase en sus actualizaciones se considera poco ético y va en contra de las operaciones en el mercado financiero real.\nOperaciones de alta frecuencia (HFT): las operaciones de alta frecuencia son una estrategia comercial que utiliza algoritmos informáticos avanzados y redes de telecomunicaciones de alta velocidad para ejecutar grandes cantidades de operaciones en una fracción de segundo. Sin embargo, las operaciones de alta frecuencia están prohibidas porque pueden conducir a la manipulación del mercado, crear ventajas injustas y causar inestabilidad en el mercado.\nEn nuestra plataforma, esperamos que todos los comerciantes utilicen nuestros servicios de manera justa y honesta y cumplan con todas las leyes, regulaciones y nuestros Términos de uso.\n\nUsos válidos durante la etapa de evaluación (fase 1) que están prohibidos durante la etapa de financiación\nTrading de alta frecuencia (HFT), cobertura, swing trading, martingala y grid trading.\n\nCambios de contraseña\nBajo ninguna circunstancia será posible cambiar la contraseña, y no haremos ninguna excepción. La responsabilidad de la contraseña de cada cuenta recae en cada cliente.\n\nPagos\nEl cliente será elegible para recibir un pago de la empresa siempre que haya pasado con éxito la fase de evaluación, haya negociado la cuenta financiada en pleno cumplimiento de las reglas operativas de la empresa y haya sido aprobado por la empresa.',
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
