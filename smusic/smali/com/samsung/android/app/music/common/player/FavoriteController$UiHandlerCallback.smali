.class Lcom/samsung/android/app/music/common/player/FavoriteController$UiHandlerCallback;
.super Ljava/lang/Object;
.source "FavoriteController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/FavoriteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiHandlerCallback"
.end annotation


# static fields
.field static final ANNOUNCE_FOR_ACCESSIBILITY:I = 0x2

.field static final SHOW_FAVORITE_TOAST:I = 0x1

.field static final UPDATE_FAVORITE_ICON:I


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/player/FavoriteController;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$UiHandlerCallback;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/player/FavoriteController;Lcom/samsung/android/app/music/common/player/FavoriteController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/player/FavoriteController;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/player/FavoriteController$1;

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/FavoriteController$UiHandlerCallback;-><init>(Lcom/samsung/android/app/music/common/player/FavoriteController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 339
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 355
    :goto_0
    return v3

    .line 341
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$UiHandlerCallback;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$1000(Lcom/samsung/android/app/music/common/player/FavoriteController;Z)V

    goto :goto_0

    .line 344
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$UiHandlerCallback;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$300(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$UiHandlerCallback;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    .line 345
    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$300(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$UiHandlerCallback;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$100(Lcom/samsung/android/app/music/common/player/FavoriteController;)Z

    move-result v2

    invoke-static {v1, v2, v3, v3}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->setMessage(Landroid/content/Context;ZII)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 344
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 349
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$UiHandlerCallback;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$1100(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$UiHandlerCallback;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    .line 350
    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$300(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
