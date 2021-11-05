import i18n from 'i18n-js';

import en from './en.json';
import zh from './zh.json';

i18n.locale = 'en';
i18n.fallbacks = true;
i18n.translations = {en, zh};

export default i18n;
