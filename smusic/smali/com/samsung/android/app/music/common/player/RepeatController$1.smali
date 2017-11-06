.class Lcom/samsung/android/app/music/common/player/RepeatController$1;
.super Ljava/lang/Object;
.source "RepeatController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/RepeatController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/RepeatController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/RepeatController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/RepeatController;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/RepeatController$1;->this$0:Lcom/samsung/android/app/music/common/player/RepeatController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 62
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/RepeatController$1;->this$0:Lcom/samsung/android/app/music/common/player/RepeatController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/player/RepeatController;->access$002(Lcom/samsung/android/app/music/common/player/RepeatController;Z)Z

    .line 66
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->toggleRepeat()V

    goto :goto_0
.end method
