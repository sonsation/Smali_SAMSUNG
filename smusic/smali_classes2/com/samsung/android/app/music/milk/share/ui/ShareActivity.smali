.class public Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "ShareActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ShareActivity"


# instance fields
.field private isDisableBack:Z

.field mDisableHandler:Landroid/os/Handler;

.field private mFBCallbackManager:Lcom/facebook/CallbackManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->isDisableBack:Z

    .line 206
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity$1;-><init>(Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->mDisableHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->isDisableBack:Z

    return p1
.end method

.method public static isShareable(Landroid/content/Context;Z)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showToast"    # Z

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const-string v1, "ShareActivity"

    const-string v2, "isShareable>> NetworkUtils.canAccessNetwork is false. So can not share"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const v1, 0x7f0a0364

    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static launch(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 184
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isUPSMMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const v0, 0x7f0a0453

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static shareAlbum(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/share/ShareItem;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/samsung/android/app/music/common/model/share/ShareItem;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 149
    :cond_0
    const-string v1, "ShareActivity"

    const-string/jumbo v2, "shareAlbum >> ShareData is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 152
    :cond_1
    const-string v1, "ShareActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shareAlbum >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "SHARED_TYPE"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const-string v1, "SHARED_ITEM_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->launch(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static shareArtist(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/share/ShareItem;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/samsung/android/app/music/common/model/share/ShareItem;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 137
    :cond_0
    const-string v1, "ShareActivity"

    const-string/jumbo v2, "shareArtist >> ShareData is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 140
    :cond_1
    const-string v1, "ShareActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shareArtist >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "SHARED_TYPE"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string v1, "SHARED_ITEM_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 144
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->launch(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static shareEvent(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/share/ShareItem;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/samsung/android/app/music/common/model/share/ShareItem;

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    const-string v1, "ShareActivity"

    const-string/jumbo v2, "shareEvent >> ShareData is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 176
    :cond_0
    const-string v1, "ShareActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shareEvent >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "SHARED_TYPE"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v1, "SHARED_ITEM_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 180
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->launch(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static sharePick(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/share/ShareItem;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/samsung/android/app/music/common/model/share/ShareItem;

    .prologue
    .line 160
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 161
    :cond_0
    const-string v1, "ShareActivity"

    const-string/jumbo v2, "sharePick >> ShareData is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string v1, "ShareActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sharePick >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "SHARED_TYPE"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string v1, "SHARED_ITEM_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 168
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->launch(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static shareStation(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    .line 96
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 97
    :cond_0
    const-string v1, "ShareActivity"

    const-string/jumbo v2, "shareStation >> ShareData is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "SHARED_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    const-string v1, "SHARED_STATION_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    const-string v1, "SHARED_TRACK_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 104
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->launch(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static shareTrack(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .prologue
    .line 125
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 126
    :cond_0
    const-string v1, "ShareActivity"

    const-string/jumbo v2, "shareTrack >> ShareData is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 129
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "SHARED_TYPE"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v1, "SHARED_TRACK_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->launch(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public getFBCallbackManager()Lcom/facebook/CallbackManager;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->mFBCallbackManager:Lcom/facebook/CallbackManager;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    const-string v0, "ShareActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult >> requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const v0, 0xface

    if-eq p1, v0, :cond_0

    const v0, 0xfacf

    if-ne p1, v0, :cond_1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->mFBCallbackManager:Lcom/facebook/CallbackManager;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->mFBCallbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 93
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v8, 0x7f040126

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "SHARED_STATION_KEY"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/Station;

    .line 43
    .local v5, "station":Lcom/samsung/android/app/music/common/model/Station;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "SHARED_TRACK_KEY"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 44
    .local v6, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "SHARED_ITEM_KEY"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/share/ShareItem;

    .line 45
    .local v4, "item":Lcom/samsung/android/app/music/common/model/share/ShareItem;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "SHARED_TYPE"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 47
    .local v7, "type":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "args":Landroid/os/Bundle;
    const-string v8, "SHARED_STATION_KEY"

    invoke-virtual {v0, v8, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 49
    const-string v8, "SHARED_TRACK_KEY"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    const-string v8, "SHARED_ITEM_KEY"

    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 51
    const-string v8, "SHARED_TYPE"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    new-instance v2, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;

    invoke-direct {v2}, Lcom/samsung/android/app/music/milk/share/ui/ShareFragment;-><init>()V

    .line 53
    .local v2, "f":Landroid/app/Fragment;
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 56
    .local v3, "ft":Landroid/app/FragmentTransaction;
    const v8, 0x7f12037e

    invoke-virtual {v3, v8, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 57
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    .line 60
    .local v1, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v1, :cond_0

    .line 61
    const-string v8, "ShareStation"

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v10, 0x0

    new-instance v11, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchButtonGroupResponseExecutor;

    invoke-direct {v11, v1}, Lcom/samsung/android/app/music/bixby/executor/radio/LaunchButtonGroupResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v11, v9, v10

    invoke-interface {v1, v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 64
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onDestroy()V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->mDisableHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 75
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->isDisableBack:Z

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "ShareActivity"

    const-string v1, "onKeyDown >> Back key is disabled."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDisabledBackPress(J)V
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->isDisableBack:Z

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->mDisableHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 204
    return-void
.end method

.method public setFBCallbackManager(Lcom/facebook/CallbackManager;)V
    .locals 0
    .param p1, "cm"    # Lcom/facebook/CallbackManager;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->mFBCallbackManager:Lcom/facebook/CallbackManager;

    .line 195
    return-void
.end method
