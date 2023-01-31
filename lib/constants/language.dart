String? getCurrentLanguageValue(String field) {
  // una cosa per capire in che lingua è il telefono
  // cerca la stringa in base a quella lingua
  return LANG_IT[field];
}

const String APP_TITLE = "W1N";

const String DASHBOARD_CONST = "DASHBOARD";
const String POLICY_PRIVACY = "Policy privacy";
const String COME_FUNZIONA = "Come funziona?";
const String CONTATTACI = "Contattaci";
const String EVENTI = "Eventi";
const String LOGOUT = "Logout";
const String LOGIN = "Benvenuto su W1N!";
const String LOGIN_BUTTON = "Login";
const String CONFIRM = "Conferma";
const String CANCEL = "Annulla";
const String REMOVE = "Elimina";
const String REGISTER = "Registrati";
const String RICORDAMI = "Ricordami";
const String EMAIL = "Email";
const String PASSWORD = "Password";
const String PASSWORD_CONFIRM = "Conferma password";
const String FORGOT_PASSWORD = "Hai dimenticato la password?";
const String DONT_HAVE_AN_ACCOUNT = "Non hai un account?";
const String PASSWORD_RECOVERY = "Recupera password";
const String INSERT_EMAIL= "Inserisci la tua email";
const String BACK= "Torna indietro";
const String I_ALREADY_HAVE_ACCOUNT = "Ho già un account";
const String SUBSCRIPTION_TYPE_TITLE = "Tipo di abbonamento";
const String EDIT = "Modifica";
const String EXPIRING = "Scadenza";
const String AVAILABLE_POSTS = "Post disponibili";
const String ADD = "Aggiungi";
const String AVAILABLE_FEATURES= "Features disponibili";
const String EMPLOYEES_SEARCH= "Ricerca dipendenti";
const String ENABLED = "Abilitata";
const String EDIT_SUBSCRIPTION= "Modifica il tuo abbonamento";
const String MANAGE_SUBSCRIPTION= "Gestisci il tuo abbonamento";
const String CURRENT_SUB= "Attuale";
const String PASS_TO= "Passa a";
const String CVV= "CVV";
const String CREDIT_CARD_NUMBER= "Numero della carta";
const String CREDIT_CARD_NAME= "Nome sulla carta";
const String PAYMENT_CONFIRM= "Conferma l\'acquisto";
const String REMOVE_ACCOUNT = "Elimina il tuo account";
const String PAYMENT_TITLE = "Completa il pagamento";
const String PAYMENT_DETAIL = "Dettagli di pagamento";
const String PAYMENT_METHOD = "Metodo di pagamento";
const String BANK_TRANSFER = "Bonifico bancario";
const String CREDIT_CARD = "Carta di credito";


// Stati degli annunci
const String ACTIVE = "active";
const String CURRENT = "current";
const String ACCEPTED = "accepted";
const String HISTORY = "history";

// Parti della giornata
const String MORNING = "morning";
const String AFTERNOON = "afternoon";
const String EVENING = "evening";
const String NIGHT = "night";

const List<String> filterHourSlotToSend = [MORNING, AFTERNOON, EVENING, NIGHT];

// Tipi di utente
const String USER_DATORE = "DATORE";
const String USER_LAVORATORE = "LAVORATORE";
const String USER_AMMINISTRATORE = "AMMINISTRATORE";

// Richieste sulla subscription

const String WHAT_SEARCH = "search";
const String WHAT_CREATE_ADVERTISEMENT = "createAdvertisement";

const String CONFERMA = "CONFERMA";
const String ANNULLA = "ANNULLA";

const String BANNER_CANNOT_SEARCH_USER = "CANNOT_SEARCH_USER";
const String CANNOT_LOAD_SUBSCRIPTION_INFO = "CANNOT_LOAD_SUBSCRIPTION_INFO";

const String GESTISCI_ABBONAMENTO = "GESTISCI_ABBONAMENTO";
const String INFORMAZIONI_DI_CONTATTO = "INFORMAZIONI_DI_CONTATTO";
const String CHI_SIAMO = "CHI_SIAMO";

final Map<String, String> LANG_IT = {
  DASHBOARD_CONST: "Dashboard",
  POLICY_PRIVACY: "Policy privacy",
  COME_FUNZIONA: "Come funziona?",
  EVENTI: "Eventi",
  LOGOUT: "Logout",
  LOGIN: "Login",
  CONFIRM: "Conferma",
  EMAIL: "Email",
  FORGOT_PASSWORD: "Hai dimenticato la password?",
  DONT_HAVE_AN_ACCOUNT: "Non hai un account?",
  PASSWORD_RECOVERY: 'Recupera password',
  REGISTER: "Registrati",
  PASSWORD: "Password",
  PASSWORD_CONFIRM: "Conferma password",
  INSERT_EMAIL: "Inserisci la tua email",
  BACK:"Torna indietro",
  I_ALREADY_HAVE_ACCOUNT: "Ho già un account",

  RICORDAMI:"Ricordami",
  CONTATTACI: "Contattaci",
  ACTIVE: "ATTIVO",
  ACCEPTED: "ACCETTATO",
  HISTORY: "ARCHIVIATO",
  CURRENT: "IN CORSO",
  USER_AMMINISTRATORE: "AMMINISTRATORE",
  USER_DATORE: "DATORE",
  USER_LAVORATORE: "LAVORATORE",
  CONFERMA: "Conferma",
  BANNER_CANNOT_SEARCH_USER:
  "IL TUO ABBONAMENTO NON TI PERMETTE DI VEDERE TUTTI I DATI DEI RISULTATI DI RICERCA, AGGIORNA IL TUO ABBONAMENTO",
  CANNOT_LOAD_SUBSCRIPTION_INFO:
  "Non riesco a caricare i dati dell'abbonamento",
  GESTISCI_ABBONAMENTO: "Vedi abbonamento",
  INFORMAZIONI_DI_CONTATTO: "Informazioni di contatto",
  CHI_SIAMO: "Chi siamo",
  REMOVE_ACCOUNT: "Elimina il tuo account",
  SUBSCRIPTION_TYPE_TITLE: "Tipo di abbonamento",
  EXPIRING:"Scadenza",
  EDIT:"Modifica",
  AVAILABLE_POSTS:"Post disponibili",
  ADD:"Aggiungi",
  AVAILABLE_FEATURES:"Features disponibili",
  EMPLOYEES_SEARCH:"Ricerca dipendenti",
  ENABLED:"Abilitata",
  EDIT_SUBSCRIPTION:"Modifica il tuo abbonamento",
  MANAGE_SUBSCRIPTION:"Gestisci il tuo abbonamento",
  CURRENT_SUB:"Attuale",
  PASS_TO:"Passa a",
  CVV:"CVV",
  CREDIT_CARD_NUMBER:"Numero della carta",
  CREDIT_CARD_NAME:"Nome sulla carta",
  PAYMENT_CONFIRM:"Conferma l\'acquisto",
  PAYMENT_TITLE:"Completa il pagamento",
  PAYMENT_DETAIL:"Dettagli di pagamento",
  PAYMENT_METHOD:"Metodo di pagamento",
  CREDIT_CARD:"Carta di credito",
  BANK_TRANSFER:"Bonifico bancario",
  REMOVE:"Elimina",
  CANCEL:"Annulla",




  "": "",
  "": "",
  "": "",
  "": "",
};

final Map<String, String> LANG_EN = {
  DASHBOARD_CONST: "Dashboard",
  "": "",
  ACTIVE: "ACTIVE",
  ACCEPTED: "ACCEPTED",
  HISTORY: "HISTORY",
  CURRENT: "CURRENT",
  USER_AMMINISTRATORE: "AMMINISTRATORE",
  USER_DATORE: "DATORE",
  USER_LAVORATORE: "LAVORATORE",
  "": "",
  "": "",
  "": "",
  "": "",
  "": "",
  "": "",
  "": "",
  "": "",
  "": "",
};

// image constants

const String BACKGROUND_IMAGE_NAME = "background-image.png";
const String LOGO_IMAGE_NAME = "logo-white.png";
