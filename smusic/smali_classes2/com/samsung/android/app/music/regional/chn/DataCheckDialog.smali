.class public Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;
.super Landroid/app/DialogFragment;
.source "DataCheckDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;
    }
.end annotation


# static fields
.field private static final DATA_CONNECTED_MOBILE:I = 0x2

.field private static final DATA_CONNECTED_WIFI:I = 0x1

.field private static final DATA_DISCONNECTED:I = 0x0

.field public static final DIALOG_TAG:Ljava/lang/String; = "data_check_help_dialog"

.field public static final PREF_DATA_CHECK_HELP:Ljava/lang/String; = "data_check_help"

.field public static final PREF_KEY_DATA_CHECK:Ljava/lang/String; = "data_check_default"

.field private static final PREF_KEY_DATA_CHECK_HELP_DMR:Ljava/lang/String; = "data_check_help_dlna"

.field private static final PREF_KEY_DATA_CHECK_HELP_DMS:Ljava/lang/String; = "data_check_help_nearby_item"

.field public static final RESULT_CANCEL:I = 0x1

.field public static final RESULT_OK:I

.field private static final TAG:Ljava/lang/String;

.field private static sShowDataCheckHelpDMR:Z

.field private static sShowDataCheckHelpDMS:Z


# instance fields
.field private mIsChecked:Z

.field private mKeyWord:Ljava/lang/String;

.field private mNetworkStatus:I

.field private mOnDialogResultListener:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

.field private mPrefKey:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 36
    const-class v0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->TAG:Ljava/lang/String;

    .line 58
    sput-boolean v1, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->sShowDataCheckHelpDMS:Z

    .line 60
    sput-boolean v1, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->sShowDataCheckHelpDMR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mIsChecked:Z

    .line 75
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "networkStatus"    # I
    .param p2, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mIsChecked:Z

    .line 168
    sget-object v0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataCheckDialog() : networkStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", prefKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iput-object p2, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mPrefKey:Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mKeyWord:Ljava/lang/String;

    .line 171
    iput p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mNetworkStatus:I

    .line 172
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "networkStatus"    # I
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "prefKey"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mIsChecked:Z

    .line 175
    sget-object v0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataCheckDialog() : networkStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", keyWord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", prefKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iput-object p3, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mPrefKey:Ljava/lang/String;

    .line 178
    iput-object p2, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mKeyWord:Ljava/lang/String;

    .line 179
    iput p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mNetworkStatus:I

    .line 180
    iput-object p4, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mTitle:Ljava/lang/String;

    .line 181
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mIsChecked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mIsChecked:Z

    return p1
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 34
    sput-boolean p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->sShowDataCheckHelpDMS:Z

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 34
    sput-boolean p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->sShowDataCheckHelpDMR:Z

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mOnDialogResultListener:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    return-object v0
.end method

.method private static checkNetworkStatus(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWiFiP2PEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    .line 87
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    const/4 v0, 0x2

    goto :goto_0

    .line 90
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDmrDataHelpChecked(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 114
    sget-boolean v4, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->sShowDataCheckHelpDMR:Z

    if-eqz v4, :cond_0

    .line 115
    const-string v4, "data_check_help"

    .line 116
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 118
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->checkNetworkStatus(Landroid/content/Context;)I

    move-result v0

    .line 119
    .local v0, "networkStatus":I
    if-ne v0, v2, :cond_0

    .line 120
    const-string v4, "data_check_help_dlna"

    .line 121
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->sShowDataCheckHelpDMR:Z

    if-eqz v4, :cond_0

    .line 126
    .end local v0    # "networkStatus":I
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private static isDmsDataHelpChecked(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 97
    sget-boolean v4, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->sShowDataCheckHelpDMS:Z

    if-eqz v4, :cond_0

    .line 98
    const-string v4, "data_check_help"

    .line 99
    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 102
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->checkNetworkStatus(Landroid/content/Context;)I

    move-result v0

    .line 103
    .local v0, "networkStatus":I
    if-ne v0, v2, :cond_0

    .line 104
    const-string v4, "data_check_help_nearby_item"

    .line 105
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->sShowDataCheckHelpDMS:Z

    if-eqz v4, :cond_0

    .line 110
    .end local v0    # "networkStatus":I
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static showDataCheckDialog(Landroid/app/Activity;Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;)Z
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "l"    # Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    .local v0, "context":Landroid/content/Context;
    const-string v6, "data_check_help"

    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 156
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v6, "data_check_default"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 164
    :goto_0
    return v5

    .line 159
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->checkNetworkStatus(Landroid/content/Context;)I

    move-result v2

    .line 160
    .local v2, "networkStatus":I
    new-instance v1, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    const-string v6, "data_check_default"

    invoke-direct {v1, v2, v6}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;-><init>(ILjava/lang/String;)V

    .line 162
    .local v1, "dialog":Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->setOnDialogResultListener(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;)V

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "data_check_help_dialog"

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 164
    if-eqz v2, :cond_1

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method public static showDmrDataHelpDialog(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->isDmrDataHelpChecked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-static {v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->checkNetworkStatus(Landroid/content/Context;)I

    move-result v1

    .line 145
    .local v1, "networkStatus":I
    new-instance v2, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    const-string v3, "data_check_help_dlna"

    invoke-direct {v2, v1, v3}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;-><init>(ILjava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "data_check_help_dialog"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 147
    const/4 v2, 0x1

    .line 149
    .end local v1    # "networkStatus":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static showDmsDataCheckDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->isDmsDataHelpChecked(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    invoke-static {v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->checkNetworkStatus(Landroid/content/Context;)I

    move-result v1

    .line 133
    .local v1, "networkStatus":I
    new-instance v2, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    const-string v3, "data_check_help_nearby_item"

    invoke-direct {v2, v1, p1, v3, p2}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "data_check_help_dialog"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 136
    const/4 v2, 0x1

    .line 138
    .end local v1    # "networkStatus":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mOnDialogResultListener:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mOnDialogResultListener:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;->onResult(I)V

    .line 293
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 196
    invoke-virtual {p0, v11, v11}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->setStyle(II)V

    .line 198
    if-eqz p1, :cond_0

    .line 199
    const-string v8, "prefKey"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mPrefKey:Ljava/lang/String;

    .line 200
    const-string v8, "keyWord"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mKeyWord:Ljava/lang/String;

    .line 201
    const-string v8, "networkStatus"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mNetworkStatus:I

    .line 204
    :cond_0
    iget v8, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mNetworkStatus:I

    if-eq v8, v12, :cond_1

    iget v8, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mNetworkStatus:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 205
    :cond_1
    const v8, 0x7f0a009a

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/app/music/common/util/AppNameUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    .line 205
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "stringBodyText":Ljava/lang/String;
    const v7, 0x7f0a009b

    .line 212
    .local v7, "stringTitleId":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 213
    .local v0, "a":Landroid/app/Activity;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a008a

    new-instance v10, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$2;

    invoke-direct {v10, p0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$2;-><init>(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)V

    .line 214
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0146

    new-instance v10, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;

    invoke-direct {v10, p0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;-><init>(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)V

    .line 222
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 261
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string v8, "layout_inflater"

    .line 262
    invoke-virtual {v0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 263
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040053

    new-instance v9, Landroid/widget/LinearLayout;

    .line 264
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 263
    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 265
    .local v5, "mainView":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 267
    const v8, 0x7f12016b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 268
    .local v1, "bodyText":Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    const v8, 0x7f1200c9

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 271
    .local v3, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 272
    new-instance v8, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$3;

    invoke-direct {v8, p0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$3;-><init>(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)V

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    new-instance v8, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$4;

    invoke-direct {v8, p0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$4;-><init>(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)V

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 284
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "bodyText":Landroid/widget/TextView;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "checkBox":Landroid/widget/CheckBox;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "mainView":Landroid/view/View;
    .end local v6    # "stringBodyText":Ljava/lang/String;
    .end local v7    # "stringTitleId":I
    :goto_0
    return-object v8

    .line 209
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 185
    const-string v0, "prefKey"

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mPrefKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "keyWord"

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mKeyWord:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "networkStatus"

    iget v1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mNetworkStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    return-void
.end method

.method public setOnDialogResultListener(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->mOnDialogResultListener:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    .line 297
    return-void
.end method
