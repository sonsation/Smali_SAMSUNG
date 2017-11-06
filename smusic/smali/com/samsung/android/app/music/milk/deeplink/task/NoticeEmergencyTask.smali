.class public Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "NoticeEmergencyTask.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mLink:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TITLE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;->mTitle:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->MESSAGE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;->mMessage:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TYPE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;->mType:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->LINK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;->mLink:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 37
    new-instance v1, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;-><init>()V

    .line 39
    .local v1, "emergencyDialog":Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TITLE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->MESSAGE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TYPE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v2, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->setOnButtonClickListener(Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;)V

    .line 65
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->setArguments(Landroid/os/Bundle;)V

    .line 66
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/popup/EmergencyNoticeDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public isValidTask()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeEmergencyTask;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
