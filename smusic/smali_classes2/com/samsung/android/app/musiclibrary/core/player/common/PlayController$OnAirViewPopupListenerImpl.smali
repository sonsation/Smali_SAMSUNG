.class Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$OnAirViewPopupListenerImpl;
.super Ljava/lang/Object;
.source "PlayController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirViewPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAirViewPopupListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$OnAirViewPopupListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$1;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$OnAirViewPopupListenerImpl;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)V

    return-void
.end method


# virtual methods
.method public getAirView(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$OnAirViewPopupListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->access$300(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 239
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 240
    .local v1, "id":I
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->prev_btn:I

    if-ne v1, v4, :cond_1

    .line 241
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$OnAirViewPopupListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->access$000(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->getPrevTitle()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "prevTitle":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 243
    sget v4, Lcom/samsung/android/app/musiclibrary/R$string;->tts_previous:I

    invoke-static {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 245
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$OnAirViewPopupListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->access$300(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getAirTextView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 253
    .end local v3    # "prevTitle":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 246
    :cond_1
    sget v4, Lcom/samsung/android/app/musiclibrary/R$id;->next_btn:I

    if-ne v1, v4, :cond_3

    .line 247
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$OnAirViewPopupListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->access$000(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->getNextTitle()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "nextTitle":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 249
    sget v4, Lcom/samsung/android/app/musiclibrary/R$string;->tts_next:I

    invoke-static {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getButtonDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 251
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$OnAirViewPopupListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->access$300(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getAirTextView(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 253
    .end local v2    # "nextTitle":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method
