import "@typespec/openapi3";
import "./models.tsp";
import "./methods.tsp";

@service(
  title: "Telegram Bot API",
  version: "5.0.0"
)
namespace TelegramBotAPI;

@server("https://api.telegram.org/bot{token}", "Telegram Bot API server")
@doc("The Bot API is an HTTP-based interface created for developers keen on building bots for Telegram.")
service TelegramBot {
  @doc("Use this method to receive incoming updates using long polling.")
  op getUpdates: GetUpdates;

  @doc("Use this method to specify a url and receive incoming updates via an outgoing webhook.")
  op setWebhook: SetWebhook;

  @doc("Use this method to remove webhook integration if you decide to switch back to getUpdates.")
  op deleteWebhook: DeleteWebhook;

  @doc("Use this method to get current webhook status.")
  op getWebhookInfo: GetWebhookInfo;

  @doc("A simple method for testing your bot's auth token.")
  op getMe: GetMe;

  @doc("Use this method to log out from the cloud Bot API server before launching the bot locally.")
  op logOut: LogOut;

  @doc("Use this method to close the bot instance before moving it from one local server to another.")
  op close: Close;

  @doc("Use this method to send text messages.")
  op sendMessage: SendMessage;

  @doc("Use this method to forward messages of any kind.")
  op forwardMessage: ForwardMessage;

  @doc("Use this method to copy messages of any kind.")
  op copyMessage: CopyMessage;

  @doc("Use this method to send photos.")
  op sendPhoto: SendPhoto;

  @doc("Use this method to send audio files.")
  op sendAudio: SendAudio;

  @doc("Use this method to send general files.")
  op sendDocument: SendDocument;

  @doc("Use this method to send video files.")
  op sendVideo: SendVideo;

  @doc("Use this method to send animation files.")
  op sendAnimation: SendAnimation;

  @doc("Use this method to send audio files as playable voice messages.")
  op sendVoice: SendVoice;

  @doc("Use this method to send video messages.")
  op sendVideoNote: SendVideoNote;

  @doc("Use this method to send a group of photos, videos, documents or audios as an album.")
  op sendMediaGroup: SendMediaGroup;

  @doc("Use this method to send point on the map.")
  op sendLocation: SendLocation;

  @doc("Use this method to edit live location messages.")
  op editMessageLiveLocation: EditMessageLiveLocation;

  @doc("Use this method to stop updating a live location message.")
  op stopMessageLiveLocation: StopMessageLiveLocation;

  @doc("Use this method to send information about a venue.")
  op sendVenue: SendVenue;

  @doc("Use this method to send phone contacts.")
  op sendContact: SendContact;

  @doc("Use this method to send a native poll.")
  op sendPoll: SendPoll;

  @doc("Use this method to send an animated emoji that will display a random value.")
  op sendDice: SendDice;

  @doc("Use this method when you need to tell the user that something is happening on the bot's side.")
  op sendChatAction: SendChatAction;

  @doc("Use this method to get a list of profile pictures for a user.")
  op getUserProfilePhotos: GetUserProfilePhotos;

  @doc("Use this method to get basic info about a file and prepare it for downloading.")
  op getFile: GetFile;

  @doc("Use this method to kick a user from a group, a supergroup or a channel.")
  op kickChatMember: KickChatMember;

  @doc("Use this method to unban a previously kicked user in a supergroup or channel.")
  op unbanChatMember: UnbanChatMember;

  @doc("Use this method to restrict a user in a supergroup.")
  op restrictChatMember: RestrictChatMember;

  @doc("Use this method to promote or demote a user in a supergroup or a channel.")
  op promoteChatMember: PromoteChatMember;

  @doc("Use this method to set a custom title for an administrator in a supergroup promoted by the bot.")
  op setChatAdministratorCustomTitle: SetChatAdministratorCustomTitle;

  @doc("Use this method to set default chat permissions for all members.")
  op setChatPermissions: SetChatPermissions;

  @doc("Use this method to generate a new invite link for a chat.")
  op exportChatInviteLink: ExportChatInviteLink;

  @doc("Use this method to set a new profile photo for the chat.")
  op setChatPhoto: SetChatPhoto;

  @doc("Use this method to delete a chat photo.")
  op deleteChatPhoto: DeleteChatPhoto;

  @doc("Use this method to change the title of a chat.")
  op setChatTitle: SetChatTitle;

  @doc("Use this method to change the description of a group, a supergroup or a channel.")
  op setChatDescription: SetChatDescription;

  @doc("Use this method to add a message to the list of pinned messages in a chat.")
  op pinChatMessage: PinChatMessage;

  @doc("Use this method to remove a message from the list of pinned messages in a chat.")
  op unpinChatMessage: UnpinChatMessage;

  @doc("Use this method to clear the list of pinned messages in a chat.")
  op unpinAllChatMessages: UnpinAllChatMessages;

  @doc("Use this method for your bot to leave a group, supergroup or channel.")
  op leaveChat: LeaveChat;

  @doc("Use this method to get up to date information about the chat.")
  op getChat: GetChat;

  @doc("Use this method to get a list of administrators in a chat.")
  op getChatAdministrators: GetChatAdministrators;

  @doc("Use this method to get the number of members in a chat.")
  op getChatMembersCount: GetChatMembersCount;

  @doc("Use this method to get information about a member of a chat.")
  op getChatMember: GetChatMember;

  @doc("Use this method to set a new group sticker set for a supergroup.")
  op setChatStickerSet: SetChatStickerSet;

  @doc("Use this method to delete a group sticker set from a supergroup.")
  op deleteChatStickerSet: DeleteChatStickerSet;

  @doc("Use this method to send answers to callback queries sent from inline keyboards.")
  op answerCallbackQuery: AnswerCallbackQuery;

  @doc("Use this method to change the list of the bot's commands.")
  op setMyCommands: SetMyCommands;

  @doc("Use this method to get the current list of the bot's commands.")
  op getMyCommands: GetMyCommands;

  @doc("Use this method to edit text and game messages.")
  op editMessageText: EditMessageText;

  @doc("Use this method to edit captions of messages.")
  op editMessageCaption: EditMessageCaption;

  @doc("Use this method to edit animation, audio, document, photo, or video messages.")
  op editMessageMedia: EditMessageMedia;

  @doc("Use this method to edit only the reply markup of messages.")
  op editMessageReplyMarkup: EditMessageReplyMarkup;

  @doc("Use this method to stop a poll which was sent by the bot.")
  op stopPoll: StopPoll;

  @doc("Use this method to delete a message.")
  op deleteMessage: DeleteMessage;

  @doc("Use this method to send static .WEBP or animated .TGS stickers.")
  op sendSticker: SendSticker;

  @doc("Use this method to get a sticker set.")
  op getStickerSet: GetStickerSet;

  @doc("Use this method to upload a .PNG file with a sticker for later use.")
  op uploadStickerFile: UploadStickerFile;

  @doc("Use this method to create a new sticker set owned by a user.")
  op createNewStickerSet: CreateNewStickerSet;

  @doc("Use this method to add a new sticker to a set created by the bot.")
  op addStickerToSet: AddStickerToSet;

  @doc("Use this method to move a sticker in a set created by the bot to a specific position.")
  op setStickerPositionInSet: SetStickerPositionInSet;

  @doc("Use this method to delete a sticker from a set created by the bot.")
  op deleteStickerFromSet: DeleteStickerFromSet;

  @doc("Use this method to set the thumbnail of a sticker set.")
  op setStickerSetThumb: SetStickerSetThumb;

  @doc("Use this method to send answers to an inline query.")
  op answerInlineQuery: AnswerInlineQuery;

  @doc("Use this method to send invoices.")
  op sendInvoice: SendInvoice;

  @doc("Use this method to reply to shipping queries.")
  op answerShippingQuery: AnswerShippingQuery;

  @doc("Use this method to respond to pre-checkout queries.")
  op answerPreCheckoutQuery: AnswerPreCheckoutQuery;

  @doc("Informs a user that some of the Telegram Passport elements they provided contains errors.")
  op setPassportDataErrors: SetPassportDataErrors;

  @doc("Use this method to send a game.")
  op sendGame: SendGame;

  @doc("Use this method to set the score of the specified user in a game.")
  op setGameScore: SetGameScore;

  @doc("Use this method to get data for high score tables.")
  op getGameHighScores: GetGameHighScores;
}
