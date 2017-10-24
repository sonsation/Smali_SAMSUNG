.class public Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;
.super Landroid/app/Activity;
.source "ScreenshotEditResolveActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNotificationId:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addPaperArtistIntent(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const-string/jumbo v1, "com.dama.paperartist"

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->isPackageVaild(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "editIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    const-string/jumbo v2, "image/png"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string/jumbo v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 160
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 161
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.dama.paperartist"

    .line 164
    const-string/jumbo v3, "com.dama.paperartist.PaperArtistActivity"

    .line 163
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v0    # "editIntent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private addPhotoEditorIntent(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const-string/jumbo v1, "com.sec.android.mimage.photoretouching"

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->isPackageVaild(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "editIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    const-string/jumbo v2, "image/png"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.sec.android.mimage.photoretouching"

    .line 180
    const-string/jumbo v3, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    .line 179
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v0    # "editIntent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private addPsTouchIntent(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const-string/jumbo v1, "air.com.adobe.pstouch.oem1"

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->isPackageVaild(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "editIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    const-string/jumbo v2, "image/png"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const-string/jumbo v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 191
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 193
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "air.com.adobe.pstouch.oem1"

    const-string/jumbo v3, "air.com.adobe.pstouch.oem1.AppEntry"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v0    # "editIntent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private doFinish()V
    .locals 1

    .prologue
    .line 234
    const v0, 0x7f0f028b

    invoke-static {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    .line 235
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->finish()V

    .line 233
    return-void
.end method

.method private isPackageVaild(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 201
    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 204
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 205
    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : return true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v2, 0x1

    return v2

    .line 208
    :cond_0
    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : return false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    return v5

    .line 211
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "com.dama.paperartist is not vaild"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return v5
.end method


# virtual methods
.method public getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 218
    const/4 v7, 0x0

    .line 219
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 221
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 226
    .end local v7    # "path":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 227
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 230
    :cond_1
    return-object v7

    .line 225
    .restart local v7    # "path":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 226
    if-eqz v6, :cond_2

    .line 227
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_2
    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 61
    .local v13, "intent":Landroid/content/Intent;
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->requestWindowFeature(I)Z

    .line 64
    const-string/jumbo v21, "NotificationId"

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mNotificationId:I

    .line 65
    const-string/jumbo v21, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    .line 66
    .local v14, "notificationManager":Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mNotificationId:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 68
    const-string/jumbo v21, "Uri"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 70
    sget-object v21, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "onCreate : mUri is null."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->doFinish()V

    .line 152
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    return-void

    .line 73
    :cond_0
    sget-object v21, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mUri : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getPathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    .line 75
    .local v15, "path":Ljava/lang/String;
    if-nez v15, :cond_1

    .line 76
    sget-object v21, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "onCreate : path is not exist."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->doFinish()V

    goto :goto_0

    .line 79
    :cond_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v8, "editFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_2

    .line 81
    sget-object v21, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "onCreate : Item is not exist."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->doFinish()V

    goto :goto_0

    .line 85
    :cond_2
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v21, "android.intent.action.EDIT"

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v9, "editIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    const-string/jumbo v22, "image/png"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const/high16 v21, 0x10000000

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    .line 89
    .local v5, "chooserActivityIntent":Landroid/content/Intent;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    const/high16 v21, 0x10000000

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 91
    const/high16 v21, 0x10000

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v11, "excludeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 96
    .local v16, "pm":Landroid/content/pm/PackageManager;
    if-eqz v16, :cond_4

    .line 97
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v17

    .line 98
    .local v17, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "ri$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 99
    .local v18, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 100
    new-instance v21, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    .end local v17    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v18    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v19    # "ri$iterator":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v21, "extra_chooser_droplist"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0, v11}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 107
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v4, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->addPaperArtistIntent(Ljava/util/ArrayList;)Z

    .line 109
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->addPhotoEditorIntent(Ljava/util/ArrayList;)Z

    .line 110
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->addPsTouchIntent(Ljava/util/ArrayList;)Z

    .line 113
    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 114
    .local v20, "size":I
    sget-object v21, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "size = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 116
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    .line 117
    .local v10, "editorIntent":Landroid/content/Intent;
    sget-object v21, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "onCreate : Single image edit app - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v10    # "editorIntent":Landroid/content/Intent;
    .end local v20    # "size":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->finish()V

    goto/16 :goto_0

    .line 119
    .restart local v20    # "size":I
    :cond_5
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_7

    .line 120
    :try_start_1
    move/from16 v0, v20

    new-array v3, v0, [Landroid/content/Intent;

    .line 121
    .local v3, "addIntents":[Landroid/content/Intent;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    move/from16 v0, v20

    if-ge v12, v0, :cond_6

    .line 122
    new-instance v22, Landroid/content/Intent;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Intent;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v22, v3, v12

    .line 121
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 124
    :cond_6
    const-string/jumbo v21, "android.intent.extra.ALTERNATE_INTENTS"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 125
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 130
    .end local v3    # "addIntents":[Landroid/content/Intent;
    .end local v12    # "i":I
    .end local v20    # "size":I
    :catch_0
    move-exception v7

    .line 131
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    sget-object v21, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "onCreate : ActivityNotFoundException occured. "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    .line 133
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 134
    invoke-static {v6}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 136
    const v21, 0x7f0f0298

    const v22, 0x7f0f029c

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;II)V

    goto :goto_2

    .line 127
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v20    # "size":I
    :cond_7
    :try_start_2
    sget-object v21, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "onCreate : No edit app? count = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v21, Landroid/content/ActivityNotFoundException;

    invoke-direct/range {v21 .. v21}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw v21
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    .end local v20    # "size":I
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_8
    const v21, 0x7f0f0296

    const v22, 0x7f0f029c

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_2

    .line 143
    :cond_9
    const v21, 0x7f0f029d

    const v22, 0x7f0f029c

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_2
.end method
