.class public Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;
.super Landroid/app/DialogFragment;
.source "DrmPopupFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "drm_popup"


# instance fields
.field private final mBuyListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPlayListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 172
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->mBuyListener:Landroid/content/DialogInterface$OnClickListener;

    .line 228
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    .line 251
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->startBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;Ljava/lang/String;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getAudioId(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getAudioId(Ljava/lang/String;)J
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 208
    const/4 v6, 0x0

    .line 210
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 213
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 217
    if-eqz v6, :cond_0

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_0
    :goto_0
    return-wide v0

    .line 217
    :cond_1
    if-eqz v6, :cond_2

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getDrmDialogFactory()Landroid/app/AlertDialog;
    .locals 8

    .prologue
    const v7, 0x1040013

    const v6, 0x1040009

    const v5, 0x1080027

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 74
    .local v0, "data":Landroid/os/Bundle;
    const-string v3, "path"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 114
    :pswitch_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "text1"

    .line 116
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 117
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 121
    .local v1, "dialog":Landroid/app/AlertDialog;
    :goto_0
    return-object v1

    .line 78
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :pswitch_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "text1"

    .line 80
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "count"

    .line 81
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 80
    invoke-direct {p0, v4, v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getMessage(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->mPlayListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 84
    .restart local v1    # "dialog":Landroid/app/AlertDialog;
    goto :goto_0

    .line 86
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :pswitch_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "text1"

    .line 88
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getMessage(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "text2"

    .line 89
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getMessage(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->mDeleteListener:Landroid/content/DialogInterface$OnClickListener;

    .line 90
    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 91
    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 92
    .restart local v1    # "dialog":Landroid/app/AlertDialog;
    goto/16 :goto_0

    .line 94
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :pswitch_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "text1"

    .line 96
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->mBuyListener:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    invoke-virtual {v3, v6, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 99
    .restart local v1    # "dialog":Landroid/app/AlertDialog;
    goto/16 :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 62
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 64
    .local v0, "index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 65
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "name":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 67
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->unknown:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "name":Ljava/lang/String;
    goto :goto_0
.end method

.method private getMessage(I)Ljava/lang/String;
    .locals 2
    .param p1, "stringType"    # I

    .prologue
    .line 125
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getMessage(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMessage(ILjava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "stringType"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "message":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 169
    :goto_0
    return-object v0

    .line 132
    :pswitch_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_want_unlock_q:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    goto :goto_0

    .line 135
    :pswitch_1
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_no_longer_available:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    goto :goto_0

    .line 138
    :pswitch_2
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_want_delete_q:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    goto :goto_0

    .line 141
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/musiclibrary/R$plurals;->drm_can_use_n_times:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 143
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 142
    invoke-virtual {v2, v3, p3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->drm_play_now_q:I

    .line 143
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    goto :goto_0

    .line 146
    :pswitch_4
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_failed_acquire_license:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    goto :goto_0

    .line 149
    :pswitch_5
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_unable_access_server_msg:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    goto :goto_0

    .line 152
    :pswitch_6
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_server_problem_msg:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    goto :goto_0

    .line 155
    :pswitch_7
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_acquiring_license:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    goto :goto_0

    .line 158
    :pswitch_8
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_no_data_connectivity:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    goto :goto_0

    .line 161
    :pswitch_9
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_sorry_license_expired:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    goto/16 :goto_0

    .line 164
    :pswitch_a
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->playback_failed_msg:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    goto/16 :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static getNewInstance(Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;
    .locals 1
    .param p0, "data"    # Landroid/os/Bundle;
    .param p1, "playListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 50
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;-><init>()V

    .line 51
    .local v0, "f":Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->setPlayListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 53
    return-object v0
.end method

.method private setPlayListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "playListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->mPlayListener:Landroid/content/DialogInterface$OnClickListener;

    .line 226
    return-void
.end method

.method private startBrowser(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 181
    if-nez p1, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/app/musiclibrary/R$string;->drm_failed_acquire_license:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 185
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "i":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 191
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 194
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    const/high16 v3, 0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 198
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "DrmPopupFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DrmPopupFragment() - could not find a suitable activity for launching license url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getDrmDialogFactory()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
