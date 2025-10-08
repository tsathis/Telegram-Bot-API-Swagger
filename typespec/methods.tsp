namespace TelegramBotAPI;

@doc("Use this method to receive incoming updates using long polling.")
op GetUpdates is {
  @post
  @route("/getUpdates")
  parameters: {
    @query
    offset?: int32;

    @query
    limit?: int32;

    @query
    timeout?: int32;

    @query
    allowed_updates?: string[];
  };
  response: Update[];
};

@doc("Use this method to specify a url and receive incoming updates via an outgoing webhook.")
op SetWebhook is {
  @post
  @route("/setWebhook")
  parameters: {
    @query
    url: string;

    @query
    certificate?: InputFile;

    @query
    ip_address?: string;

    @query
    max_connections?: int32;

    @query
    allowed_updates?: string[];

    @query
    drop_pending_updates?: boolean;
  };
  response: boolean;
};

@doc("Use this method to remove webhook integration if you decide to switch back to getUpdates.")
op DeleteWebhook is {
  @post
  @route("/deleteWebhook")
  parameters: {
    @query
    drop_pending_updates?: boolean;
  };
  response: boolean;
};

@doc("Use this method to get current webhook status.")
op GetWebhookInfo is {
  @post
  @route("/getWebhookInfo")
  response: WebhookInfo;
};

@doc("A simple method for testing your bot's auth token.")
op GetMe is {
  @post
  @route("/getMe")
  response: User;
};

@doc("Use this method to log out from the cloud Bot API server before launching the bot locally.")
op LogOut is {
  @post
  @route("/logOut")
  response: boolean;
};

@doc("Use this method to close the bot instance before moving it from one local server to another.")
op Close is {
  @post
  @route("/close")
  response: boolean;
};

@doc("Use this method to send text messages.")
op SendMessage is {
  @post
  @route("/sendMessage")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    text: string;

    @query
    parse_mode?: string;

    @query
    entities?: MessageEntity[];

    @query
    disable_web_page_preview?: boolean;

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup | ReplyKeyboardMarkup | ReplyKeyboardRemove | ForceReply;
  };
  response: Message;
};

@doc("Use this method to forward messages of any kind.")
op ForwardMessage is {
  @post
  @route("/forwardMessage")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    from_chat_id: int64 | string;

    @query
    message_id: int32;

    @query
    disable_notification?: boolean;
  };
  response: Message;
};

@doc("Use this method to copy messages of any kind.")
op CopyMessage is {
  @post
  @route("/copyMessage")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    from_chat_id: int64 | string;

    @query
    message_id: int32;

    @query
    caption?: string;

    @query
    parse_mode?: string;

    @query
    caption_entities?: MessageEntity[];

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup | ReplyKeyboardMarkup | ReplyKeyboardRemove | ForceReply;
  };
  response: MessageId;
};

@doc("Use this method to send photos.")
op SendPhoto is {
  @post
  @route("/sendPhoto")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    photo: InputFile | string;

    @query
    caption?: string;

    @query
    parse_mode?: string;

    @query
    caption_entities?: MessageEntity[];

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup | ReplyKeyboardMarkup | ReplyKeyboardRemove | ForceReply;
  };
  response: Message;
};

@doc("Use this method to send audio files.")
op SendAudio is {
  @post
  @route("/sendAudio")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    audio: InputFile | string;

    @query
    caption?: string;

    @query
    parse_mode?: string;

    @query
    caption_entities?: MessageEntity[];

    @query
    duration?: int32;

    @query
    performer?: string;

    @query
    title?: string;

    @query
    thumb?: InputFile | string;

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup | ReplyKeyboardMarkup | ReplyKeyboardRemove | ForceReply;
  };
  response: Message;
};

@doc("Use this method to send general files.")
op SendDocument is {
  @post
  @route("/sendDocument")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    document: InputFile | string;

    @query
    thumb?: InputFile | string;

    @query
    caption?: string;

    @query
    parse_mode?: string;

    @query
    caption_entities?: MessageEntity[];

    @query
    disable_content_type_detection?: boolean;

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup | ReplyKeyboardMarkup | ReplyKeyboardRemove | ForceReply;
  };
  response: Message;
};

@doc("Use this method to send video files.")
op SendVideo is {
  @post
  @route("/sendVideo")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    video: InputFile | string;

    @query
    duration?: int32;

    @query
    width?: int32;

    @query
    height?: int32;

    @query
    thumb?: InputFile | string;

    @query
    caption?: string;

    @query
    parse_mode?: string;

    @query
    caption_entities?: MessageEntity[];

    @query
    supports_streaming?: boolean;

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup | ReplyKeyboardMarkup | ReplyKeyboardRemove | ForceReply;
  };
  response: Message;
};

@doc("Use this method to send animation files.")
op SendAnimation is {
  @post
  @route("/sendAnimation")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    animation: InputFile | string;

    @query
    duration?: int32;

    @query
    width?: int32;

    @query
    height?: int32;

    @query
    thumb?: InputFile | string;

    @query
    caption?: string;

    @query
    parse_mode?: string;

    @query
    caption_entities?: MessageEntity[];

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup | ReplyKeyboardMarkup | ReplyKeyboardRemove | ForceReply;
  };
  response: Message;
};

@doc("Use this method to send audio files as playable voice messages.")
op SendVoice is {
  @post
  @route("/sendVoice")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    voice: InputFile | string;

    @query
    caption?: string;

    @query
    parse_mode?: string;

    @query
    caption_entities?: MessageEntity[];

    @query
    duration?: int32;

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup | ReplyKeyboardMarkup | ReplyKeyboardRemove | ForceReply;
  };
  response: Message;
};

@doc("Use this method to send video messages.")
op SendVideoNote is {
  @post
  @route("/sendVideoNote")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    video_note: InputFile | string;

    @query
    duration?: int32;

    @query
    length?: int32;

    @query
    thumb?: InputFile | string;

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup | ReplyKeyboardMarkup | ReplyKeyboardRemove | ForceReply;
  };
  response: Message;
};

@doc("Use this method to send a group of photos, videos, documents or audios as an album.")
op SendMediaGroup is {
  @post
  @route("/sendMediaGroup")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    media: InputMedia[];

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;
  };
  response: Message[];
};

@doc("Use this method to send point on the map.")
op SendLocation is {
  @post
  @route("/sendLocation")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    latitude: float64;

    @query
    longitude: float64;

    @query
    horizontal_accuracy?: float64;

    @query
    live_period?: int32;

    @query
    heading?: int32;

    @query
    proximity_alert_radius?: int32;

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup | ReplyKeyboardMarkup | ReplyKeyboardRemove | ForceReply;
  };
  response: Message;
};

@doc("Use this method to edit live location messages.")
op EditMessageLiveLocation is {
  @post
  @route("/editMessageLiveLocation")
  parameters: {
    @query
    chat_id?: int64 | string;

    @query
    message_id?: int32;

    @query
    inline_message_id?: string;

    @query
    latitude: float64;

    @query
    longitude: float64;

    @query
    horizontal_accuracy?: float64;

    @query
    heading?: int32;

    @query
    proximity_alert_radius?: int32;

    @query
    reply_markup?: InlineKeyboardMarkup;
  };
  response: Message | boolean;
};

@doc("Use this method to stop updating a live location message.")
op StopMessageLiveLocation is {
  @post
  @route("/stopMessageLiveLocation")
  parameters: {
    @query
    chat_id?: int64 | string;

    @query
    message_id?: int32;

    @query
    inline_message_id?: string;

    @query
    reply_markup?: InlineKeyboardMarkup;
  };
  response: Message | boolean;
};

@doc("Use this method to send information about a venue.")
op SendVenue is {
  @post
  @route("/sendVenue")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    latitude: float64;

    @query
    longitude: float64;

    @query
    title: string;

    @query
    address: string;

    @query
    foursquare_id?: string;

    @query
    foursquare_type?: string;

    @query
    google_place_id?: string;

    @query
    google_place_type?: string;

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup | ReplyKeyboardMarkup | ReplyKeyboardRemove | ForceReply;
  };
  response: Message;
};

@doc("Use this method to send phone contacts.")
op SendContact is {
  @post
  @route("/sendContact")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    phone_number: string;

    @query
    first_name: string;

    @query
    last_name?: string;

    @query
    vcard?: string;

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup | ReplyKeyboardMarkup | ReplyKeyboardRemove | ForceReply;
  };
  response: Message;
};

@doc("Use this method to send a native poll.")
op SendPoll is {
  @post
  @route("/sendPoll")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    question: string;

    @query
    options: string[];

    @query
    is_anonymous?: boolean;

    @query
    type?: "regular" | "quiz";

    @query
    allows_multiple_answers?: boolean;

    @query
    correct_option_id?: int32;

    @query
    explanation?: string;

    @query
    explanation_parse_mode?: string;

    @query
    explanation_entities?: MessageEntity[];

    @query
    open_period?: int32;

    @query
    close_date?: int32;

    @query
    is_closed?: boolean;

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup | ReplyKeyboardMarkup | ReplyKeyboardRemove | ForceReply;
  };
  response: Message;
};

@doc("Use this method to send an animated emoji that will display a random value.")
op SendDice is {
  @post
  @route("/sendDice")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    emoji?: "🎲" | "🎯" | "🏀" | "⚽" | "🎳" | "🎰";

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup | ReplyKeyboardMarkup | ReplyKeyboardRemove | ForceReply;
  };
  response: Message;
};

@doc("Use this method when you need to tell the user that something is happening on the bot's side.")
op SendChatAction is {
  @post
  @route("/sendChatAction")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    action: "typing" | "upload_photo" | "record_video" | "upload_video" | "record_voice" | "upload_voice" | "upload_document" | "find_location" | "record_video_note" | "upload_video_note";
  };
  response: boolean;
};

@doc("Use this method to get a list of profile pictures for a user.")
op GetUserProfilePhotos is {
  @post
  @route("/getUserProfilePhotos")
  parameters: {
    @query
    user_id: int64;

    @query
    offset?: int32;

    @query
    limit?: int32;
  };
  response: UserProfilePhotos;
};

@doc("Use this method to get basic info about a file and prepare it for downloading.")
op GetFile is {
  @post
  @route("/getFile")
  parameters: {
    @query
    file_id: string;
  };
  response: File;
};

@doc("Use this method to kick a user from a group, a supergroup or a channel.")
op KickChatMember is {
  @post
  @route("/kickChatMember")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    user_id: int64;

    @query
    until_date?: int32;
  };
  response: boolean;
};

@doc("Use this method to unban a previously kicked user in a supergroup or channel.")
op UnbanChatMember is {
  @post
  @route("/unbanChatMember")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    user_id: int64;

    @query
    only_if_banned?: boolean;
  };
  response: boolean;
};

@doc("Use this method to restrict a user in a supergroup.")
op RestrictChatMember is {
  @post
  @route("/restrictChatMember")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    user_id: int64;

    @query
    permissions: ChatPermissions;

    @query
    until_date?: int32;
  };
  response: boolean;
};

@doc("Use this method to promote or demote a user in a supergroup or a channel.")
op PromoteChatMember is {
  @post
  @route("/promoteChatMember")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    user_id: int64;

    @query
    is_anonymous?: boolean;

    @query
    can_manage_chat?: boolean;

    @query
    can_post_messages?: boolean;

    @query
    can_edit_messages?: boolean;

    @query
    can_delete_messages?: boolean;

    @query
    can_manage_voice_chats?: boolean;

    @query
    can_restrict_members?: boolean;

    @query
    can_promote_members?: boolean;

    @query
    can_change_info?: boolean;

    @query
    can_invite_users?: boolean;

    @query
    can_pin_messages?: boolean;
  };
  response: boolean;
};

@doc("Use this method to set a custom title for an administrator in a supergroup promoted by the bot.")
op SetChatAdministratorCustomTitle is {
  @post
  @route("/setChatAdministratorCustomTitle")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    user_id: int64;

    @query
    custom_title: string;
  };
  response: boolean;
};

@doc("Use this method to set default chat permissions for all members.")
op SetChatPermissions is {
  @post
  @route("/setChatPermissions")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    permissions: ChatPermissions;
  };
  response: boolean;
};

@doc("Use this method to generate a new invite link for a chat.")
op ExportChatInviteLink is {
  @post
  @route("/exportChatInviteLink")
  parameters: {
    @query
    chat_id: int64 | string;
  };
  response: string;
};

@doc("Use this method to set a new profile photo for the chat.")
op SetChatPhoto is {
  @post
  @route("/setChatPhoto")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    photo: InputFile;
  };
  response: boolean;
};

@doc("Use this method to delete a chat photo.")
op DeleteChatPhoto is {
  @post
  @route("/deleteChatPhoto")
  parameters: {
    @query
    chat_id: int64 | string;
  };
  response: boolean;
};

@doc("Use this method to change the title of a chat.")
op SetChatTitle is {
  @post
  @route("/setChatTitle")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    title: string;
  };
  response: boolean;
};

@doc("Use this method to change the description of a group, a supergroup or a channel.")
op SetChatDescription is {
  @post
  @route("/setChatDescription")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    description?: string;
  };
  response: boolean;
};

@doc("Use this method to add a message to the list of pinned messages in a chat.")
op PinChatMessage is {
  @post
  @route("/pinChatMessage")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    message_id: int32;

    @query
    disable_notification?: boolean;
  };
  response: boolean;
};

@doc("Use this method to remove a message from the list of pinned messages in a chat.")
op UnpinChatMessage is {
  @post
  @route("/unpinChatMessage")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    message_id?: int32;
  };
  response: boolean;
};

@doc("Use this method to clear the list of pinned messages in a chat.")
op UnpinAllChatMessages is {
  @post
  @route("/unpinAllChatMessages")
  parameters: {
    @query
    chat_id: int64 | string;
  };
  response: boolean;
};

@doc("Use this method for your bot to leave a group, supergroup or channel.")
op LeaveChat is {
  @post
  @route("/leaveChat")
  parameters: {
    @query
    chat_id: int64 | string;
  };
  response: boolean;
};

@doc("Use this method to get up to date information about the chat.")
op GetChat is {
  @post
  @route("/getChat")
  parameters: {
    @query
    chat_id: int64 | string;
  };
  response: Chat;
};

@doc("Use this method to get a list of administrators in a chat.")
op GetChatAdministrators is {
  @post
  @route("/getChatAdministrators")
  parameters: {
    @query
    chat_id: int64 | string;
  };
  response: ChatMember[];
};

@doc("Use this method to get the number of members in a chat.")
op GetChatMembersCount is {
  @post
  @route("/getChatMembersCount")
  parameters: {
    @query
    chat_id: int64 | string;
  };
  response: int32;
};

@doc("Use this method to get information about a member of a chat.")
op GetChatMember is {
  @post
  @route("/getChatMember")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    user_id: int64;
  };
  response: ChatMember;
};

@doc("Use this method to set a new group sticker set for a supergroup.")
op SetChatStickerSet is {
  @post
  @route("/setChatStickerSet")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    sticker_set_name: string;
  };
  response: boolean;
};

@doc("Use this method to delete a group sticker set from a supergroup.")
op DeleteChatStickerSet is {
  @post
  @route("/deleteChatStickerSet")
  parameters: {
    @query
    chat_id: int64 | string;
  };
  response: boolean;
};

@doc("Use this method to send answers to callback queries sent from inline keyboards.")
op AnswerCallbackQuery is {
  @post
  @route("/answerCallbackQuery")
  parameters: {
    @query
    callback_query_id: string;

    @query
    text?: string;

    @query
    show_alert?: boolean;

    @query
    url?: string;

    @query
    cache_time?: int32;
  };
  response: boolean;
};

@doc("Use this method to change the list of the bot's commands.")
op SetMyCommands is {
  @post
  @route("/setMyCommands")
  parameters: {
    @query
    commands: BotCommand[];

    @query
    scope?: BotCommandScope;

    @query
    language_code?: string;
  };
  response: boolean;
};

@doc("Use this method to get the current list of the bot's commands.")
op GetMyCommands is {
  @post
  @route("/getMyCommands")
  parameters: {
    @query
    scope?: BotCommandScope;

    @query
    language_code?: string;
  };
  response: BotCommand[];
};

@doc("Use this method to edit text and game messages.")
op EditMessageText is {
  @post
  @route("/editMessageText")
  parameters: {
    @query
    chat_id?: int64 | string;

    @query
    message_id?: int32;

    @query
    inline_message_id?: string;

    @query
    text: string;

    @query
    parse_mode?: string;

    @query
    entities?: MessageEntity[];

    @query
    disable_web_page_preview?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup;
  };
  response: Message | boolean;
};

@doc("Use this method to edit captions of messages.")
op EditMessageCaption is {
  @post
  @route("/editMessageCaption")
  parameters: {
    @query
    chat_id?: int64 | string;

    @query
    message_id?: int32;

    @query
    inline_message_id?: string;

    @query
    caption?: string;

    @query
    parse_mode?: string;

    @query
    caption_entities?: MessageEntity[];

    @query
    reply_markup?: InlineKeyboardMarkup;
  };
  response: Message | boolean;
};

@doc("Use this method to edit animation, audio, document, photo, or video messages.")
op EditMessageMedia is {
  @post
  @route("/editMessageMedia")
  parameters: {
    @query
    chat_id?: int64 | string;

    @query
    message_id?: int32;

    @query
    inline_message_id?: string;

    @query
    media: InputMedia;

    @query
    reply_markup?: InlineKeyboardMarkup;
  };
  response: Message | boolean;
};

@doc("Use this method to edit only the reply markup of messages.")
op EditMessageReplyMarkup is {
  @post
  @route("/editMessageReplyMarkup")
  parameters: {
    @query
    chat_id?: int64 | string;

    @query
    message_id?: int32;

    @query
    inline_message_id?: string;

    @query
    reply_markup?: InlineKeyboardMarkup;
  };
  response: Message | boolean;
};

@doc("Use this method to stop a poll which was sent by the bot.")
op StopPoll is {
  @post
  @route("/stopPoll")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    message_id: int32;

    @query
    reply_markup?: InlineKeyboardMarkup;
  };
  response: Poll;
};

@doc("Use this method to delete a message.")
op DeleteMessage is {
  @post
  @route("/deleteMessage")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    message_id: int32;
  };
  response: boolean;
};

@doc("Use this method to send static .WEBP or animated .TGS stickers.")
op SendSticker is {
  @post
  @route("/sendSticker")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    sticker: InputFile | string;

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup | ReplyKeyboardMarkup | ReplyKeyboardRemove | ForceReply;
  };
  response: Message;
};

@doc("Use this method to get a sticker set.")
op GetStickerSet is {
  @post
  @route("/getStickerSet")
  parameters: {
    @query
    name: string;
  };
  response: StickerSet;
};

@doc("Use this method to upload a .PNG file with a sticker for later use.")
op UploadStickerFile is {
  @post
  @route("/uploadStickerFile")
  parameters: {
    @query
    user_id: int64;

    @query
    png_sticker: InputFile;
  };
  response: File;
};

@doc("Use this method to create a new sticker set owned by a user.")
op CreateNewStickerSet is {
  @post
  @route("/createNewStickerSet")
  parameters: {
    @query
    user_id: int64;

    @query
    name: string;

    @query
    title: string;

    @query
    png_sticker?: InputFile | string;

    @query
    tgs_sticker?: InputFile;

    @query
    emojis: string;

    @query
    contains_masks?: boolean;

    @query
    mask_position?: MaskPosition;
  };
  response: boolean;
};

@doc("Use this method to add a new sticker to a set created by the bot.")
op AddStickerToSet is {
  @post
  @route("/addStickerToSet")
  parameters: {
    @query
    user_id: int64;

    @query
    name: string;

    @query
    png_sticker?: InputFile | string;

    @query
    tgs_sticker?: InputFile;

    @query
    emojis: string;

    @query
    mask_position?: MaskPosition;
  };
  response: boolean;
};

@doc("Use this method to move a sticker in a set created by the bot to a specific position.")
op SetStickerPositionInSet is {
  @post
  @route("/setStickerPositionInSet")
  parameters: {
    @query
    sticker: string;

    @query
    position: int32;
  };
  response: boolean;
};

@doc("Use this method to delete a sticker from a set created by the bot.")
op DeleteStickerFromSet is {
  @post
  @route("/deleteStickerFromSet")
  parameters: {
    @query
    sticker: string;
  };
  response: boolean;
};

@doc("Use this method to set the thumbnail of a sticker set.")
op SetStickerSetThumb is {
  @post
  @route("/setStickerSetThumb")
  parameters: {
    @query
    name: string;

    @query
    user_id: int64;

    @query
    thumb?: InputFile | string;
  };
  response: boolean;
};

@doc("Use this method to send answers to an inline query.")
op AnswerInlineQuery is {
  @post
  @route("/answerInlineQuery")
  parameters: {
    @query
    inline_query_id: string;

    @query
    results: InlineQueryResult[];

    @query
    cache_time?: int32;

    @query
    is_personal?: boolean;

    @query
    next_offset?: string;

    @query
    switch_pm_text?: string;

    @query
    switch_pm_parameter?: string;
  };
  response: boolean;
};

@doc("Use this method to send invoices.")
op SendInvoice is {
  @post
  @route("/sendInvoice")
  parameters: {
    @query
    chat_id: int64 | string;

    @query
    title: string;

    @query
    description: string;

    @query
    payload: string;

    @query
    provider_token: string;

    @query
    currency: string;

    @query
    prices: LabeledPrice[];

    @query
    max_tip_amount?: int32;

    @query
    suggested_tip_amounts?: int32[];

    @query
    start_parameter?: string;

    @query
    provider_data?: string;

    @query
    photo_url?: string;

    @query
    photo_size?: int32;

    @query
    photo_width?: int32;

    @query
    photo_height?: int32;

    @query
    need_name?: boolean;

    @query
    need_phone_number?: boolean;

    @query
    need_email?: boolean;

    @query
    need_shipping_address?: boolean;

    @query
    send_phone_number_to_provider?: boolean;

    @query
    send_email_to_provider?: boolean;

    @query
    is_flexible?: boolean;

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup;
  };
  response: Message;
};

@doc("Use this method to reply to shipping queries.")
op AnswerShippingQuery is {
  @post
  @route("/answerShippingQuery")
  parameters: {
    @query
    shipping_query_id: string;

    @query
    ok: boolean;

    @query
    shipping_options?: ShippingOption[];

    @query
    error_message?: string;
  };
  response: boolean;
};

@doc("Use this method to respond to pre-checkout queries.")
op AnswerPreCheckoutQuery is {
  @post
  @route("/answerPreCheckoutQuery")
  parameters: {
    @query
    pre_checkout_query_id: string;

    @query
    ok: boolean;

    @query
    error_message?: string;
  };
  response: boolean;
};

@doc("Informs a user that some of the Telegram Passport elements they provided contains errors.")
op SetPassportDataErrors is {
  @post
  @route("/setPassportDataErrors")
  parameters: {
    @query
    user_id: int64;

    @query
    errors: PassportElementError[];
  };
  response: boolean;
};

@doc("Use this method to send a game.")
op SendGame is {
  @post
  @route("/sendGame")
  parameters: {
    @query
    chat_id: int64;

    @query
    game_short_name: string;

    @query
    disable_notification?: boolean;

    @query
    reply_to_message_id?: int32;

    @query
    allow_sending_without_reply?: boolean;

    @query
    reply_markup?: InlineKeyboardMarkup;
  };
  response: Message;
};

@doc("Use this method to set the score of the specified user in a game.")
op SetGameScore is {
  @post
  @route("/setGameScore")
  parameters: {
    @query
    user_id: int64;

    @query
    score: int32;

    @query
    force?: boolean;

    @query
    disable_edit_message?: boolean;

    @query
    chat_id?: int64;

    @query
    message_id?: int32;

    @query
    inline_message_id?: string;
  };
  response: Message | boolean;
};

@doc("Use this method to get data for high score tables.")
op GetGameHighScores is {
  @post
  @route("/getGameHighScores")
  parameters: {
    @query
    user_id: int64;

    @query
    chat_id?: int64;

    @query
    message_id?: int32;

    @query
    inline_message_id?: string;
  };
  response: GameHighScore[];
};

@doc("This object represents the scope to which bot commands are applied.")
model BotCommandScope {}

@doc("Represents the default scope of bot commands.")
model BotCommandScopeDefault extends BotCommandScope {
  type: "default";
}

@doc("Represents the scope of bot commands, covering all private chats.")
model BotCommandScopeAllPrivateChats extends BotCommandScope {
  type: "all_private_chats";
}

@doc("Represents the scope of bot commands, covering all group and supergroup chats.")
model BotCommandScopeAllGroupChats extends BotCommandScope {
  type: "all_group_chats";
}

@doc("Represents the scope of bot commands, covering all group and supergroup chat administrators.")
model BotCommandScopeAllChatAdministrators extends BotCommandScope {
  type: "all_chat_administrators";
}

@doc("Represents the scope of bot commands, covering a specific chat.")
model BotCommandScopeChat extends BotCommandScope {
  type: "chat";
  chat_id: int64 | string;
}

@doc("Represents the scope of bot commands, covering all administrators of a specific group or supergroup chat.")
model BotCommandScopeChatAdministrators extends BotCommandScope {
  type: "chat_administrators";
  chat_id: int64 | string;
}

@doc("Represents the scope of bot commands, covering a specific member of a group or supergroup chat.")
model BotCommandScopeChatMember extends BotCommandScope {
  type: "chat_member";
  chat_id: int64 | string;
  user_id: int64;
}