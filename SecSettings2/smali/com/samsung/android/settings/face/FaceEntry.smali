.class public Lcom/samsung/android/settings/face/FaceEntry;
.super Landroid/app/Activity;
.source "FaceEntry.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/face/FaceEntry$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static isSearchEntry:Z

.field private static mUserId:I


# instance fields
.field private key:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mIsAfw:Z

.field private mIsFromSwitch:Z

.field private mIsWaitingResult:Z

.field private mToken:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/face/FaceEntry;->isSearchEntry:Z

    .line 356
    new-instance v0, Lcom/samsung/android/settings/face/FaceEntry$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/face/FaceEntry$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/face/FaceEntry;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->key:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceEntry;->mToken:[B

    .line 58
    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsWaitingResult:Z

    .line 66
    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsAfw:Z

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsFromSwitch:Z

    .line 69
    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 50
    return-void
.end method

.method private launchChooseOrConfirmLock()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 228
    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v2, "launchConfirmLock "

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-wide/16 v6, 0x0

    .line 231
    .local v6, "challenge":J
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll()J

    move-result-wide v6

    .line 234
    :cond_0
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 235
    .local v1, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsWaitingResult:Z

    .line 237
    const v0, 0x7f0b1249

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/FaceEntry;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 238
    sget v8, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    .line 236
    const/16 v2, 0x65

    move-object v5, v4

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v2, "ConfirmLock Fail"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsWaitingResult:Z

    .line 241
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    .line 242
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    .line 227
    :cond_1
    return-void
.end method

.method private runRegister()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 141
    const-string/jumbo v5, "FcstFaceEntry"

    const-string/jumbo v6, "There is no enrolled face. Run FaceLockSettings!!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "always_finish_activities"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 146
    const v7, 0x7f0b0108

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/face/FaceEntry;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 145
    const v7, 0x7f0b06a8

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "errorMessage":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 148
    const v6, 0x7f0b069f

    .line 147
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 151
    new-instance v6, Lcom/samsung/android/settings/face/FaceEntry$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/face/FaceEntry$2;-><init>(Lcom/samsung/android/settings/face/FaceEntry;)V

    .line 150
    const v7, 0x104000a

    .line 147
    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 156
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v5, Lcom/samsung/android/settings/face/FaceEntry$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/face/FaceEntry$3;-><init>(Lcom/samsung/android/settings/face/FaceEntry;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 162
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 140
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "errorMessage":Ljava/lang/String;
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    const v5, 0x7f0b072e

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/face/FaceEntry;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 165
    .local v4, "toast":Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    goto :goto_0

    .line 168
    .end local v4    # "toast":Landroid/widget/Toast;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.samsung.android.settings.face.FaceLockSettings"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string/jumbo v5, "previousStage"

    const-string/jumbo v6, "key_face_settings_entry"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string/jumbo v5, "tokenFromLock"

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceEntry;->mToken:[B

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 172
    const/high16 v5, 0x20000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    const-string/jumbo v5, "isAfw"

    iget-boolean v6, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsAfw:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    const-string/jumbo v5, "from_switch"

    iget-boolean v6, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsFromSwitch:Z

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    const-string/jumbo v5, "android.intent.extra.USER_ID"

    sget v6, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/FaceEntry;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    .line 182
    return-void

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v5, "FcstFaceEntry"

    const-string/jumbo v6, "runRegister : Activity Not Found !"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showSensorErrorDialog(I)V
    .locals 4
    .param p1, "Stringid"    # I

    .prologue
    .line 275
    const v1, 0x7f0b06a2

    if-ne p1, v1, :cond_0

    .line 276
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 275
    if-eqz v1, :cond_0

    .line 277
    const p1, 0x7f0b06a3

    .line 280
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    const v2, 0x7f0b069f

    .line 280
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 284
    new-instance v2, Lcom/samsung/android/settings/face/FaceEntry$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceEntry$4;-><init>(Lcom/samsung/android/settings/face/FaceEntry;)V

    .line 283
    const v3, 0x104000a

    .line 280
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 289
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v1, Lcom/samsung/android/settings/face/FaceEntry$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceEntry$5;-><init>(Lcom/samsung/android/settings/face/FaceEntry;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 295
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 273
    return-void
.end method

.method private startFragment(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x7f0b0766

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 320
    move-object v13, p1

    .line 322
    .local v13, "cxt":Landroid/content/Context;
    if-nez p1, :cond_1

    .line 323
    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v1, "startFragment : context is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, ":settings:fragment_args_key"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mToken:[B

    if-eqz v0, :cond_2

    .line 329
    const-string/jumbo v0, "tokenFromLock"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mToken:[B

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 331
    :cond_2
    const-string/jumbo v0, "isAfw"

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsAfw:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    const-string/jumbo v0, "android.intent.extra.USER_ID"

    sget v1, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 333
    const-string/jumbo v0, "needTurnOnCheck"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 335
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 336
    sget-boolean v0, Lcom/samsung/android/settings/face/FaceEntry;->isSearchEntry:Z

    if-eqz v0, :cond_3

    .line 337
    const-string/jumbo v1, "com.samsung.android.settings.face.FaceSettings"

    move-object v0, p1

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragmentBySearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0

    .line 339
    :cond_3
    invoke-static {}, Lcom/android/settings/SettingsActivity;->getSettingsActivityContext()Landroid/content/Context;

    move-result-object v13

    .line 340
    if-eqz v13, :cond_0

    .line 341
    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v1, "startFragment : startPreferencePanel"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v13

    .line 342
    check-cast v6, Lcom/android/settings/SettingsActivity;

    const-string/jumbo v7, "com.samsung.android.settings.face.FaceSettings"

    move-object v8, v2

    move v9, v5

    move-object v10, v3

    move-object v11, v3

    move v12, v4

    invoke-virtual/range {v6 .. v12}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 346
    :cond_4
    const-string/jumbo v1, "com.samsung.android.settings.face.FaceSettings"

    move-object v0, p1

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 188
    const-string/jumbo v1, "FcstFaceEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "=====onActivityResult : requestCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsWaitingResult:Z

    .line 191
    const/16 v1, 0x65

    if-ne p1, v1, :cond_6

    .line 192
    if-ne p2, v5, :cond_4

    .line 193
    if-eqz p3, :cond_0

    .line 194
    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mToken:[B

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    sget v2, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/face/FaceEntry;->setResult(I)V

    .line 199
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsFromSwitch:Z

    if-nez v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/face/FaceEntry;->startFragment(Landroid/content/Context;)V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    .line 186
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockPopupNeeded(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    const/4 v3, 0x1

    invoke-static {v1, v4, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->showFaceLockTurnOnDialog(Landroid/content/Context;Landroid/preference/SwitchPreference;IZ)V

    goto :goto_0

    .line 206
    :cond_2
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    const/16 v3, 0x100

    invoke-static {v1, v0, v3, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    goto :goto_0

    .line 212
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceEntry;->runRegister()V

    goto :goto_0

    .line 215
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_5

    .line 216
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 217
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    .line 220
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    goto :goto_0

    .line 223
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 248
    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const-string/jumbo v1, "FcstFaceEntry"

    const-string/jumbo v2, "=====onCreate()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-object p0, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string/jumbo v1, "FcstFaceEntry"

    const-string/jumbo v2, "onCreate() : isInMultiWindowMode is TRUE."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const v1, 0x7f0b072e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/FaceEntry;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    .line 81
    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getSemBioFaceManager(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->key:Ljava/lang/String;

    .line 91
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v1

    if-nez v1, :cond_3

    .line 92
    const-string/jumbo v1, "FcstFaceEntry"

    const-string/jumbo v2, "Not support bio face. finish this activity"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    .line 96
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isAfw"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsAfw:Z

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "from_switch"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsFromSwitch:Z

    .line 100
    const-string/jumbo v1, "FcstFaceEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUserId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string/jumbo v1, "FcstFaceEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsAfw : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsAfw:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string/jumbo v1, "FcstFaceEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsFromSwitch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsFromSwitch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v1, :cond_4

    .line 105
    const-string/jumbo v1, "FcstFaceEntry"

    const-string/jumbo v2, "Error. mFaceManager is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    .line 107
    return-void

    .line 110
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_5

    .line 111
    const v1, 0x7f0b06a5

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/face/FaceEntry;->showSensorErrorDialog(I)V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    .line 113
    return-void

    .line 117
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 120
    .local v0, "keyguardMgr":Landroid/app/KeyguardManager;
    if-eqz p1, :cond_6

    .line 121
    const-string/jumbo v1, "IsWaitingResult"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsWaitingResult:Z

    .line 122
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsWaitingResult:Z

    if-eqz v1, :cond_6

    .line 123
    return-void

    .line 128
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    sget v2, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceEntry;->runRegister()V

    .line 130
    return-void

    .line 133
    :cond_7
    sget v1, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceEntry;->runRegister()V

    .line 72
    :goto_0
    return-void

    .line 136
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceEntry;->launchChooseOrConfirmLock()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 269
    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 268
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 252
    const-string/jumbo v0, "FcstFaceEntry"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string/jumbo v0, "IsWaitingResult"

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsWaitingResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 251
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 258
    const-string/jumbo v1, "FcstFaceEntry"

    const-string/jumbo v2, "=====onStop()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 262
    .local v0, "keyguardMgr":Landroid/app/KeyguardManager;
    sget v1, Lcom/samsung/android/settings/face/FaceEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceEntry;->mIsWaitingResult:Z

    if-eqz v1, :cond_1

    .line 265
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 257
    return-void

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceEntry;->finish()V

    goto :goto_0
.end method
