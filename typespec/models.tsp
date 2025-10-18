amespace TelegramBotAPI;

@doc("This object represents an incoming update.")
model Update {
  @doc("The update's unique identifier.")
  update_id: int32;

  message?: Message;
  edited_message?: Message;
  channel_post?: Message;
  edited_channel_post?: Message;
  inline_query?: InlineQuery;
  chosen_inline_result?: ChosenInlineResult;
  callback_query?: CallbackQuery;
  shipping_query?: ShippingQuery;
  pre_checkout_query?: PreCheckoutQuery;
  poll?: Poll;
  poll_answer?: PollAnswer;
}

@doc("Contains information about the current status of a webhook.")
model WebhookInfo {
  @doc("Webhook URL, may be empty if webhook is not set up")
  url: string;

  @doc("True, if a custom certificate was provided for webhook certificate checks")
  has_custom_certificate: boolean;

  @doc("Number of updates awaiting delivery")
  pending_update_count: int32;

  @doc("Currently used webhook IP address")
  ip_address?: string;

  @doc("Unix time for the most recent error that happened when trying to deliver an update via webhook")
  last_error_date?: int32;

  @doc("Error message in human-readable format for the most recent error")
  last_error_message?: string;

  @doc("Maximum allowed number of simultaneous HTTPS connections to the webhook for update delivery")
  max_connections?: int32;

  @doc("A list of update types the bot is subscribed to. Defaults to all update types")
  allowed_updates?: string[];
}

@doc("This object represents a Telegram user or bot.")
model User {
  @doc("Unique identifier for this user or bot")
  id: int64;

  @doc("True, if this user is a bot")
  is_bot: boolean;

  @doc("User's or bot's first name")
  first_name: string;

  @doc("User's or bot's last name")
  last_name?: string;

  @doc("User's or bot's username")
  username?: string;

  @doc("IETF language tag of the user's language")
  language_code?: string;

  @doc("True, if the bot can be invited to groups. Returned only in getMe.")
  can_join_groups?: boolean;

  @doc("True, if privacy mode is disabled for the bot. Returned only in getMe.")
  can_read_all_group_messages?: boolean;

  @doc("True, if the bot supports inline queries. Returned only in getMe.")
  supports_inline_queries?: boolean;
}

@doc("This object represents a chat.")
model Chat {
  @doc("Unique identifier for this chat.")
  id: int64;

  @doc("Type of chat")
  type: "private" | "group" | "supergroup" | "channel";

  @doc("Title, for supergroups, channels and group chats")
  title?: string;

  @doc("Username, for private chats, supergroups and channels if available")
  username?: string;

  @doc("First name of the other party in a private chat")
  first_name?: string;

  @doc("Last name of the other party in a private chat")
  last_name?: string;

  photo?: ChatPhoto;
  bio?: string;
  description?: string;
  invite_link?: string;
  pinned_message?: Message;
  permissions?: ChatPermissions;
  slow_mode_delay?: int32;
  sticker_set_name?: string;
  can_set_sticker_set?: boolean;
  linked_chat_id?: int64;
  location?: ChatLocation;
}

@doc("This object represents a message.")
model Message {
  @doc("Unique message identifier inside this chat")
  message_id: int32;

  from?: User;
  sender_chat?: Chat;
  
  @doc("Date the message was sent in Unix time")
  date: int32;

  chat: Chat;
  forward_from?: User;
  forward_from_chat?: Chat;
  forward_from_message_id?: int32;
  forward_signature?: string;
  forward_sender_name?: string;
  forward_date?: int32;
  reply_to_message?: Message;
  via_bot?: User;
  edit_date?: int32;
  media_group_id?: string;
  author_signature?: string;
  text?: string;
  entities?: MessageEntity[];
  animation?: Animation;
  audio?: Audio;
  document?: Document;
  photo?: PhotoSize[];
  sticker?: Sticker;
  video?: Video;
  video_note?: VideoNote;
  voice?: Voice;
  caption?: string;
  caption_entities?: MessageEntity[];
  contact?: Contact;
  dice?: Dice;
  game?: Game;
  poll?: Poll;
  venue?: Venue;
  location?: Location;
  new_chat_members?: User[];
  left_chat_member?: User;
  new_chat_title?: string;
  new_chat_photo?: PhotoSize[];
  delete_chat_photo?: boolean;
  group_chat_created?: boolean;
  supergroup_chat_created?: boolean;
  channel_chat_created?: boolean;
  migrate_to_chat_id?: int64;
  migrate_from_chat_id?: int64;
  pinned_message?: Message;
  invoice?: Invoice;
  successful_payment?: SuccessfulPayment;
  connected_website?: string;
  passport_data?: PassportData;
  proximity_alert_triggered?: ProximityAlertTriggered;
  reply_markup?: InlineKeyboardMarkup;
}

@doc("This object represents a unique message identifier.")
model MessageId {
  @doc("Unique message identifier")
  message_id: int32;
}

@doc("This object represents one special entity in a text message.")
model MessageEntity {
  @doc("Type of the entity")
  type: "mention" | "hashtag" | "cashtag" | "bot_command" | "url" | "email" | "phone_number" | "bold" | "italic" | "underline" | "strikethrough" | "code" | "pre" | "text_link" | "text_mention";

  @doc("Offset in UTF-16 code units to the start of the entity")
  offset: int32;

  @doc("Length of the entity in UTF-16 code units")
  length: int32;

  @doc("For 'text_link' only, url that will be opened after user taps on the text")
  url?: string;

  user?: User;
  
  @doc("For 'pre' only, the programming language of the entity text")
  language?: string;
}

@doc("This object represents one size of a photo or a file / sticker thumbnail.")
model PhotoSize {
  @doc("Identifier for this file, which can be used to download or reuse the file")
  file_id: string;

  @doc("Unique identifier for this file")
  file_unique_id: string;

  @doc("Photo width")
  width: int32;

  @doc("Photo height")
  height: int32;

  @doc("File size")
  file_size?: int32;
}

@doc("This object represents an animation file.")
model Animation {
  file_id: string;
  file_unique_id: string;
  width: int32;
  height: int32;
  duration: int32;
  thumb?: PhotoSize;
  file_name?: string;
  mime_type?: string;
  file_size?: int32;
}

@doc("This object represents an audio file to be treated as music by the Telegram clients.")
model Audio {
  file_id: string;
  file_unique_id: string;
  duration: int32;
  performer?: string;
  title?: string;
  file_name?: string;
  mime_type?: string;
  file_size?: int32;
  thumb?: PhotoSize;
}

@doc("This object represents a general file.")
model Document {
  file_id: string;
  file_unique_id: string;
  thumb?: PhotoSize;
  file_name?: string;
  mime_type?: string;
  file_size?: int32;
}

@doc("This object represents a video file.")
model Video {
  file_id: string;
  file_unique_id: string;
  width: int32;
  height: int32;
  duration: int32;
  thumb?: PhotoSize;
  file_name?: string;
  mime_type?: string;
  file_size?: int32;
}

@doc("This object represents a video message.")
model VideoNote {
  file_id: string;
  file_unique_id: string;
  length: int32;
  duration: int32;
  thumb?: PhotoSize;
  file_size?: int32;
}

@doc("This object represents a voice note.")
model Voice {
  file_id: string;
  file_unique_id: string;
  duration: int32;
  mime_type?: string;
  file_size?: int32;
}

@doc("This object represents a phone contact.")
model Contact {
  @doc("Contact's phone number")
  phone_number: string;

  @doc("Contact's first name")
  first_name: string;

  @doc("Contact's last name")
  last_name?: string;

  @doc("Contact's user identifier in Telegram")
  user_id?: int32;

  @doc("Additional data about the contact in the form of a vCard")
  vcard?: string;
}

@doc("This object represents an animated emoji that displays a random value.")
model Dice {
  @doc("Emoji on which the dice throw animation is based")
  emoji: string;

  @doc("Value of the dice")
  value: int32;
}

@doc("This object contains information about one answer option in a poll.")
model PollOption {
  @doc("Option text, 1-100 characters")
  text: string;

  @doc("Number of users that voted for this option")
  voter_count: int32;
}

@doc("This object represents an answer of a user in a non-anonymous poll.")
model PollAnswer {
  @doc("Unique poll identifier")
  poll_id: string;

  user: User;

  @doc("0-based identifiers of answer options, chosen by the user")
  option_ids: int32[];
}

@doc("This object contains information about a poll.")
model Poll {
  @doc("Unique poll identifier")
  id: string;

  @doc("Poll question, 1-255 characters")
  question: string;

  @doc("List of poll options")
  options: PollOption[];

  @doc("Total number of users that voted in the poll")
  total_voter_count: int32;

  @doc("True, if the poll is closed")
  is_closed: boolean;

  @doc("True, if the poll is anonymous")
  is_anonymous: boolean;

  @doc("Poll type")
  type: "regular" | "quiz";

  @doc("True, if the poll allows multiple answers")
  allows_multiple_answers: boolean;

  @doc("0-based identifier of the correct answer option")
  correct_option_id?: int32;

  @doc("Text that is shown when a user chooses an incorrect answer")
  explanation?: string;

  explanation_entities?: MessageEntity[];
  open_period?: int32;
  close_date?: int32;
}

@doc("This object represents a point on the map.")
model Location {
  @doc("Longitude as defined by sender")
  longitude: float64;

  @doc("Latitude as defined by sender")
  latitude: float64;

  @doc("The radius of uncertainty for the location, measured in meters; 0-1500")
  horizontal_accuracy?: float64;

  @doc("Time relative to the message sending date, during which the location can be updated")
  live_period?: int32;

  @doc("The direction in which user is moving, in degrees; 1-360")
  heading?: int32;

  @doc("Maximum distance for proximity alerts about approaching another chat member")
  proximity_alert_radius?: int32;
}

@doc("This object represents a venue.")
model Venue {
  location: Location;
  
  @doc("Name of the venue")
  title: string;

  @doc("Address of the venue")
  address: string;

  foursquare_id?: string;
  foursquare_type?: string;
  google_place_id?: string;
  google_place_type?: string;
}

@doc("Represents the content of a service message when a user triggers a proximity alert.")
model ProximityAlertTriggered {
  traveler: User;
  watcher: User;
  
  @doc("The distance between the users")
  distance: int32;
}

@doc("This object represent a user's profile pictures.")
model UserProfilePhotos {
  @doc("Total number of profile pictures the target user has")
  total_count: int32;

  @doc("Requested profile pictures (in up to 4 sizes each)")
  photos: PhotoSize[][];
}

@doc("This object represents a file ready to be downloaded.")
model File {
  file_id: string;
  file_unique_id: string;
  file_size?: int32;
  file_path?: string;
}

@doc("This object represents a custom keyboard with reply options.")
model ReplyKeyboardMarkup {
  @doc("Array of button rows")
  keyboard: KeyboardButton[][];

  @doc("Requests clients to resize the keyboard vertically for optimal fit")
  resize_keyboard?: boolean;

  @doc("Requests clients to hide the keyboard as soon as it's been used")
  one_time_keyboard?: boolean;

  @doc("Use this parameter if you want to show the keyboard to specific users only")
  selective?: boolean;
}

@doc("This object represents one button of the reply keyboard.")
model KeyboardButton {
  @doc("Text of the button")
  text: string;

  @doc("If True, the user's phone number will be sent as a contact")
  request_contact?: boolean;

  @doc("If True, the user's current location will be sent")
  request_location?: boolean;

  request_poll?: KeyboardButtonPollType;
}

@doc("This object represents type of a poll which is allowed to be created.")
model KeyboardButtonPollType {
  @doc("If quiz is passed, the user will be allowed to create only polls in the quiz mode")
  type?: string;
}

@doc("Upon receiving this object, Telegram clients will remove the current custom keyboard.")
model ReplyKeyboardRemove {
  @doc("Requests clients to remove the custom keyboard")
  remove_keyboard: boolean;

  selective?: boolean;
}

@doc("This object represents an inline keyboard that appears right next to the message it belongs to.")
model InlineKeyboardMarkup {
  @doc("Array of button rows")
  inline_keyboard: InlineKeyboardButton[][];
}

@doc("This object represents one button of an inline keyboard.")
model InlineKeyboardButton {
  @doc("Label text on the button")
  text: string;

  @doc("HTTP or tg:// url to be opened when button is pressed")
  url?: string;

  login_url?: LoginUrl;

  @doc("Data to be sent in a callback query to the bot when button is pressed")
  callback_data?: string;

  @doc("If set, pressing the button will prompt the user to select one of their chats")
  switch_inline_query?: string;

  @doc("If set, pressing the button will insert the bot's username and the specified inline query")
  switch_inline_query_current_chat?: string;

  callback_game?: CallbackGame;

  @doc("Specify True, to send a Pay button")
  pay?: boolean;
}

@doc("This object represents a parameter of the inline keyboard button used to automatically authorize a user.")
model LoginUrl {
  @doc("An HTTP URL to be opened with user authorization data")
  url: string;

  @doc("New text of the button in forwarded messages")
  forward_text?: string;

  @doc("Username of a bot, which will be used for user authorization")
  bot_username?: string;

  @doc("Pass True to request the permission for your bot to send messages to the user")
  request_write_access?: boolean;
}

@doc("This object represents an incoming callback query from a callback button.")
model CallbackQuery {
  @doc("Unique identifier for this query")
  id: string;

  from: User;
  message?: Message;
  inline_message_id?: string;
  
  @doc("Global identifier, uniquely corresponding to the chat")
  chat_instance: string;

  @doc("Data associated with the callback button")
  data?: string;

  @doc("Short name of a Game to be returned")
  game_short_name?: string;
}

@doc("A placeholder, currently holds no information.")
model CallbackGame {}

@doc("Upon receiving this object, Telegram clients will display a reply interface to the user.")
model ForceReply {
  @doc("Shows reply interface to the user")
  force_reply: boolean;

  selective?: boolean;
}

@doc("This object represents a chat photo.")
model ChatPhoto {
  @doc("File identifier of small (160x160) chat photo")
  small_file_id: string;

  @doc("Unique file identifier of small (160x160) chat photo")
  small_file_unique_id: string;

  @doc("File identifier of big (640x640) chat photo")
  big_file_id: string;

  @doc("Unique file identifier of big (640x640) chat photo")
  big_file_unique_id: string;
}

@doc("This object contains information about one member of a chat.")
model ChatMember {
  user: User;

  @doc("The member's status in the chat")
  status: "creator" | "administrator" | "member" | "restricted" | "left" | "kicked";

  custom_title?: string;
  is_anonymous?: boolean;
  can_be_edited?: boolean;
  can_post_messages?: boolean;
  can_edit_messages?: boolean;
  can_delete_messages?: boolean;
  can_restrict_members?: boolean;
  can_promote_members?: boolean;
  can_change_info?: boolean;
  can_invite_users?: boolean;
  can_pin_messages?: boolean;
  is_member?: boolean;
  can_send_messages?: boolean;
  can_send_media_messages?: boolean;
  can_send_polls?: boolean;
  can_send_other_messages?: boolean;
  can_add_web_page_previews?: boolean;
  until_date?: int32;
}

@doc("Describes actions that a non-administrator user is allowed to take in a chat.")
model ChatPermissions {
  can_send_messages?: boolean;
  can_send_media_messages?: boolean;
  can_send_polls?: boolean;
  can_send_other_messages?: boolean;
  can_add_web_page_previews?: boolean;
  can_change_info?: boolean;
  can_invite_users?: boolean;
  can_pin_messages?: boolean;
}

@doc("Represents a location to which a chat is connected.")
model ChatLocation {
  location: Location;
  
  @doc("Location address; 1-64 characters")
  address: string;
}

@doc("This object represents a bot command.")
model BotCommand {
  @doc("Text of the command, 1-32 characters")
  command: string;

  @doc("Description of the command, 3-256 characters")
  description: string;
}

@doc("Contains information about why a request was unsuccessful.")
model ResponseParameters {
  @doc("The group has been migrated to a supergroup with the specified identifier")
  migrate_to_chat_id?: int64;

  @doc("In case of exceeding flood control, the number of seconds left to wait")
  retry_after?: int32;
}

@doc("This object represents the content of a media message to be sent.")
union InputMedia {
  InputMediaAnimation,
  InputMediaDocument,
  InputMediaAudio,
  InputMediaPhoto,
  InputMediaVideo
}

@doc("Represents a photo to be sent.")
model InputMediaPhoto {
  @doc("Type of the result, must be photo")
  type: "photo";

  @doc("File to send")
  media: string;

  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
}

@doc("Represents a video to be sent.")
model InputMediaVideo {
  type: "video";
  media: string;
  thumb?: InputFile | string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  width?: int32;
  height?: int32;
  duration?: int32;
  supports_streaming?: boolean;
}

@doc("Represents an animation file to be sent.")
model InputMediaAnimation {
  type: "animation";
  media: string;
  thumb?: InputFile | string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  width?: int32;
  height?: int32;
  duration?: int32;
}

@doc("Represents an audio file to be treated as music to be sent.")
model InputMediaAudio {
  type: "audio";
  media: string;
  thumb?: InputFile | string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  duration?: int32;
  performer?: string;
  title?: string;
}

@doc("Represents a general file to be sent.")
model InputMediaDocument {
  type: "document";
  media: string;
  thumb?: InputFile | string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  disable_content_type_detection?: boolean;
}

@doc("This object represents the contents of a file to be uploaded.")
model InputFile {}

@doc("This object represents a sticker.")
model Sticker {
  file_id: string;
  file_unique_id: string;
  width: int32;
  height: int32;
  is_animated: boolean;
  thumb?: PhotoSize;
  emoji?: string;
  set_name?: string;
  mask_position?: MaskPosition;
  file_size?: int32;
}

@doc("This object represents a sticker set.")
model StickerSet {
  @doc("Sticker set name")
  name: string;

  @doc("Sticker set title")
  title: string;

  @doc("True, if the sticker set contains animated stickers")
  is_animated: boolean;

  @doc("True, if the sticker set contains masks")
  contains_masks: boolean;

  @doc("List of all set stickers")
  stickers: Sticker[];

  thumb?: PhotoSize;
}

@doc("This object describes the position on faces where a mask should be placed by default.")
model MaskPosition {
  @doc("The part of the face relative to which the mask should be placed")
  point: "forehead" | "eyes" | "mouth" | "chin";

  @doc("Shift by X-axis measured in widths of the mask scaled to the face size")
  x_shift: float64;

  @doc("Shift by Y-axis measured in heights of the mask scaled to the face size")
  y_shift: float64;

  @doc("Mask scaling coefficient")
  scale: float64;
}

@doc("This object represents an incoming inline query.")
model InlineQuery {
  @doc("Unique identifier for this query")
  id: string;

  from: User;
  location?: Location;
  
  @doc("Text of the query (up to 256 characters)")
  query: string;

  @doc("Offset of the results to be returned")
  offset: string;
}

@doc("This object represents one result of an inline query.")
union InlineQueryResult {
  InlineQueryResultCachedAudio,
  InlineQueryResultCachedDocument,
  InlineQueryResultCachedGif,
  InlineQueryResultCachedMpeg4Gif,
  InlineQueryResultCachedPhoto,
  InlineQueryResultCachedSticker,
  InlineQueryResultCachedVideo,
  InlineQueryResultCachedVoice,
  InlineQueryResultArticle,
  InlineQueryResultAudio,
  InlineQueryResultContact,
  InlineQueryResultGame,
  InlineQueryResultDocument,
  InlineQueryResultGif,
  InlineQueryResultLocation,
  InlineQueryResultMpeg4Gif,
  InlineQueryResultPhoto,
  InlineQueryResultVenue,
  InlineQueryResultVideo,
  InlineQueryResultVoice
}

@doc("Represents a link to an article or web page.")
model InlineQueryResultArticle {
  type: "article";
  id: string;
  title: string;
  input_message_content: InputMessageContent;
  reply_markup?: InlineKeyboardMarkup;
  url?: string;
  hide_url?: boolean;
  description?: string;
  thumb_url?: string;
  thumb_width?: int32;
  thumb_height?: int32;
}

@doc("Represents a link to a photo.")
model InlineQueryResultPhoto {
  type: "photo";
  id: string;
  photo_url: string;
  thumb_url: string;
  photo_width?: int32;
  photo_height?: int32;
  title?: string;
  description?: string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
}

@doc("Represents a link to an animated GIF file.")
model InlineQueryResultGif {
  type: "gif";
  id: string;
  gif_url: string;
  gif_width?: int32;
  gif_height?: int32;
  gif_duration?: int32;
  thumb_url: string;
  thumb_mime_type?: "image/jpeg" | "image/gif" | "video/mp4";
  title?: string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
}

@doc("Represents a link to a video animation.")
model InlineQueryResultMpeg4Gif {
  type: "mpeg4_gif";
  id: string;
  mpeg4_url: string;
  mpeg4_width?: int32;
  mpeg4_height?: int32;
  mpeg4_duration?: int32;
  thumb_url: string;
  thumb_mime_type?: "image/jpeg" | "image/gif" | "video/mp4";
  title?: string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
}

@doc("Represents a link to a page containing an embedded video player or a video file.")
model InlineQueryResultVideo {
  type: "video";
  id: string;
  video_url: string;
  mime_type: "text/html" | "video/mp4";
  thumb_url: string;
  title: string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  video_width?: int32;
  video_height?: int32;
  video_duration?: int32;
  description?: string;
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
}

@doc("Represents a link to an MP3 audio file.")
model InlineQueryResultAudio {
  type: "audio";
  id: string;
  audio_url: string;
  title: string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  performer?: string;
  audio_duration?: int32;
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
}

@doc("Represents a link to a voice recording in an .OGG container encoded with OPUS.")
model InlineQueryResultVoice {
  type: "voice";
  id: string;
  voice_url: string;
  title: string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  voice_duration?: int32;
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
}

@doc("Represents a link to a file.")
model InlineQueryResultDocument {
  type: "document";
  id: string;
  title: string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  document_url: string;
  mime_type: "application/pdf" | "application/zip";
  description?: string;
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
  thumb_url?: string;
  thumb_width?: int32;
  thumb_height?: int32;
}

@doc("Represents a location on a map.")
model InlineQueryResultLocation {
  type: "location";
  id: string;
  latitude: float64;
  longitude: float64;
  title: string;
  horizontal_accuracy?: float64;
  live_period?: int32;
  heading?: int32;
  proximity_alert_radius?: int32;
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
  thumb_url?: string;
  thumb_width?: int32;
  thumb_height?: int32;
}

@doc("Represents a venue.")
model InlineQueryResultVenue {
  type: "venue";
  id: string;
  latitude: float64;
  longitude: float64;
  title: string;
  address: string;
  foursquare_id?: string;
  foursquare_type?: string;
  google_place_id?: string;
  google_place_type?: string;
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
  thumb_url?: string;
  thumb_width?: int32;
  thumb_height?: int32;
}

@doc("Represents a contact with a phone number.")
model InlineQueryResultContact {
  type: "contact";
  id: string;
  phone_number: string;
  first_name: string;
  last_name?: string;
  vcard?: string;
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
  thumb_url?: string;
  thumb_width?: int32;
  thumb_height?: int32;
}

@doc("Represents a Game.")
model InlineQueryResultGame {
  type: "game";
  id: string;
  game_short_name: string;
  reply_markup?: InlineKeyboardMarkup;
}

@doc("Represents a link to a photo stored on the Telegram servers.")
model InlineQueryResultCachedPhoto {
  type: "photo";
  id: string;
  photo_file_id: string;
  title?: string;
  description?: string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
}

@doc("Represents a link to an animation file stored on the Telegram servers.")
model InlineQueryResultCachedGif {
  type: "gif";
  id: string;
  gif_file_id: string;
  title?: string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
}

@doc("Represents a link to a video animation stored on the Telegram servers.")
model InlineQueryResultCachedMpeg4Gif {
  type: "mpeg4_gif";
  id: string;
  mpeg4_file_id: string;
  title?: string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
}

@doc("Represents a link to a sticker stored on the Telegram servers.")
model InlineQueryResultCachedSticker {
  type: "sticker";
  id: string;
  sticker_file_id: string;
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
}

@doc("Represents a link to a file stored on the Telegram servers.")
model InlineQueryResultCachedDocument {
  type: "document";
  id: string;
  title: string;
  document_file_id: string;
  description?: string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
}

@doc("Represents a link to a video file stored on the Telegram servers.")
model InlineQueryResultCachedVideo {
  type: "video";
  id: string;
  video_file_id: string;
  title: string;
  description?: string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
}

@doc("Represents a link to a voice message stored on the Telegram servers.")
model InlineQueryResultCachedVoice {
  type: "voice";
  id: string;
  voice_file_id: string;
  title: string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
}

@doc("Represents a link to an MP3 audio file stored on the Telegram servers.")
model InlineQueryResultCachedAudio {
  type: "audio";
  id: string;
  audio_file_id: string;
  caption?: string;
  parse_mode?: string;
  caption_entities?: MessageEntity[];
  reply_markup?: InlineKeyboardMarkup;
  input_message_content?: InputMessageContent;
}

@doc("This object represents the content of a message to be sent as a result of an inline query.")
union InputMessageContent {
  InputTextMessageContent,
  InputLocationMessageContent,
  InputVenueMessageContent,
  InputContactMessageContent,
  InputInvoiceMessageContent
}

@doc("Represents the content of a text message to be sent as the result of an inline query.")
model InputTextMessageContent {
  @doc("Text of the message to be sent, 1-4096 characters")
  message_text: string;

  parse_mode?: string;
  entities?: MessageEntity[];
  disable_web_page_preview?: boolean;
}

@doc("Represents the content of a location message to be sent as the result of an inline query.")
model InputLocationMessageContent {
  latitude: float64;
  longitude: float64;
  horizontal_accuracy?: float64;
  live_period?: int32;
  heading?: int32;
  proximity_alert_radius?: int32;
}

@doc("Represents the content of a venue message to be sent as the result of an inline query.")
model InputVenueMessageContent {
  latitude: float64;
  longitude: float64;
  title: string;
  address: string;
  foursquare_id?: string;
  foursquare_type?: string;
  google_place_id?: string;
  google_place_type?: string;
}

@doc("Represents the content of a contact message to be sent as the result of an inline query.")
model InputContactMessageContent {
  phone_number: string;
  first_name: string;
  last_name?: string;
  vcard?: string;
}

@doc("Represents the content of an invoice message to be sent as the result of an inline query.")
model InputInvoiceMessageContent {
  title: string;
  description: string;
  payload: string;
  provider_token: string;
  currency: string;
  prices: LabeledPrice[];
  max_tip_amount?: int32;
  suggested_tip_amounts?: int32[];
  provider_data?: string;
  photo_url?: string;
  photo_size?: int32;
  photo_width?: int32;
  photo_height?: int32;
  need_name?: boolean;
  need_phone_number?: boolean;
  need_email?: boolean;
  need_shipping_address?: boolean;
  send_phone_number_to_provider?: boolean;
  send_email_to_provider?: boolean;
  is_flexible?: boolean;
}

@doc("Represents a result of an inline query that was chosen by the user and sent to their chat partner.")
model ChosenInlineResult {
  @doc("The unique identifier for the result that was chosen")
  result_id: string;

  from: User;
  location?: Location;
  inline_message_id?: string;
  
  @doc("The query that was used to obtain the result")
  query: string;
}

@doc("This object represents a portion of the price for goods or services.")
model LabeledPrice {
  @doc("Portion label")
  label: string;

  @doc("Price of the product in the smallest units of the currency")
  amount: int32;
}

@doc("This object contains basic information about an invoice.")
model Invoice {
  @doc("Product name")
  title: string;

  @doc("Product description")
  description: string;

  @doc("Unique bot deep-linking parameter")
  start_parameter: string;

  @doc("Three-letter ISO 4217 currency code")
  currency: string;

  @doc("Total price in the smallest units of the currency")
  total_amount: int32;
}

@doc("This object represents a shipping address.")
model ShippingAddress {
  @doc("ISO 3166-1 alpha-2 country code")
  country_code: string;

  @doc("State, if applicable")
  state: string;

  @doc("City")
  city: string;

  @doc("First line for the address")
  street_line1: string;

  @doc("Second line for the address")
  street_line2: string;

  @doc("Address post code")
  post_code: string;
}

@doc("This object represents information about an order.")
model OrderInfo {
  name?: string;
  phone_number?: string;
  email?: string;
  shipping_address?: ShippingAddress;
}

@doc("This object represents one shipping option.")
model ShippingOption {
  @doc("Shipping option identifier")
  id: string;

  @doc("Option title")
  title: string;

  @doc("List of price portions")
  prices: LabeledPrice[];
}

@doc("This object contains basic information about a successful payment.")
model SuccessfulPayment {
  @doc("Three-letter ISO 4217 currency code")
  currency: string;

  @doc("Total price in the smallest units of the currency")
  total_amount: int32;

  @doc("Bot specified invoice payload")
  invoice_payload: string;

  @doc("Identifier of the shipping option chosen by the user")
  shipping_option_id?: string;

  @doc("Order info provided by the user")
  order_info?: OrderInfo;

  @doc("Telegram payment identifier")
  telegram_payment_charge_id: string;

  @doc("Provider payment identifier")
  provider_payment_charge_id: string;
}

@doc("This object contains information about an incoming shipping query.")
model ShippingQuery {
  @doc("Unique query identifier")
  id: string;

  from: User;
  
  @doc("Bot specified invoice payload")
  invoice_payload: string;

  shipping_address: ShippingAddress;
}

@doc("This object contains information about an incoming pre-checkout query.")
model PreCheckoutQuery {
  @doc("Unique query identifier")
  id: string;

  from: User;
  
  @doc("Three-letter ISO 4217 currency code")
  currency: string;

  @doc("Total price in the smallest units of the currency")
  total_amount: int32;

  @doc("Bot specified invoice payload")
  invoice_payload: string;

  @doc("Identifier of the shipping option chosen by the user")
  shipping_option_id?: string;

  order_info?: OrderInfo;
}

@doc("This object represents a game.")
model Game {
  @doc("Title of the game")
  title: string;

  @doc("Description of the game")
  description: string;

  @doc("Photo that will be displayed in the game message in chats")
  photo: PhotoSize[];

  text?: string;
  text_entities?: MessageEntity[];
  animation?: Animation;
}

@doc("This object represents one row of the high scores table for a game.")
model GameHighScore {
  @doc("Position in high score table for the game")
  position: int32;

  user: User;
  
  @doc("Score")
  score: int32;
}

@doc("Contains data required for decrypting and authenticating EncryptedPassportElement.")
model EncryptedPassportElement {
  @doc("Element type")
  type: "personal_details" | "passport" | "driver_license" | "identity_card" | "internal_passport" | "address" | "utility_bill" | "bank_statement" | "rental_agreement" | "passport_registration" | "temporary_registration" | "phone_number" | "email";

  data?: string;
  phone_number?: string;
  email?: string;
  files?: PassportFile[];
  front_side?: PassportFile;
  reverse_side?: PassportFile;
  selfie?: PassportFile;
  translation?: PassportFile[];
  hash: string;
}

@doc("Contains information about documents or other Telegram Passport elements shared with the bot.")
model EncryptedCredentials {
  data: string;
  hash: string;
  secret: string;
}

@doc("This object represents a file uploaded to Telegram Passport.")
model PassportFile {
  @doc("Identifier for this file")
  file_id: string;

  @doc("Unique identifier for this file")
  file_unique_id: string;

  @doc("File size")
  file_size: int32;

  @doc("Unix time when the file was uploaded")
  file_date: int32;
}

@doc("Contains information about Telegram Passport data shared with the bot by the user.")
model PassportData {
  data: EncryptedPassportElement[];
  credentials: EncryptedCredentials;
}

@doc("This object represents an error in the Telegram Passport element.")
model PassportElementError {
  @doc("Error source")
  source: "data" | "front_side" | "reverse_side" | "selfie" | "file" | "files" | "translation_file" | "translation_files" | "unspecified";

  @doc("The section of the user's Telegram Passport which has the error")
  type: "personal_details" | "passport" | "driver_license" | "identity_card" | "internal_passport" | "address" | "utility_bill" | "bank_statement" | "rental_agreement" | "passport_registration" | "temporary_registration" | "phone_number" | "email";

  @doc("Name of the data field which has the error")
  field_name: string;

  @doc("Base64-encoded data hash")
  data_hash: string;

  @doc("Error message")
  message: string;
}

@doc("Represents an issue in one of the data fields that was provided by the user.")
model PassportElementErrorDataField extends PassportElementError {
  source: "data";
}

@doc("Represents an issue with the front side of a document.")
model PassportElementErrorFrontSide extends PassportElementError {
  source: "front_side";
}

@doc("Represents an issue with the reverse side of a document.")
model PassportElementErrorReverseSide extends PassportElementError {
  source: "reverse_side";
}

@doc("Represents an issue with the selfie with a document.")
model PassportElementErrorSelfie extends PassportElementError {
  source: "selfie";
}

@doc("Represents an issue with a document scan.")
model PassportElementErrorFile extends PassportElementError {
  source: "file";
}

@doc("Represents an issue with a list of scans.")
model PassportElementErrorFiles extends PassportElementError {
  source: "files";
}

@doc("Represents an issue with one of the files that constitute the translation of a document.")
model PassportElementErrorTranslationFile extends PassportElementError {
  source: "translation_file";
}

@doc("Represents an issue with the translated version of a document.")
model PassportElementErrorTranslationFiles extends PassportElementError {
  source: "translation_files";
}

@doc("Represents an issue in an unspecified place.")
model PassportElementErrorUnspecified extends PassportElementError {
  source: "unspecified";
}