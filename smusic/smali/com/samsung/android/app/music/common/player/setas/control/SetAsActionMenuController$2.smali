.class Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$2;
.super Ljava/lang/Object;
.source "SetAsActionMenuController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$OnCommandDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$2;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$2;->this$0:Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;->access$000(Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController;)Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$OnCommandDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActionMenuController$OnCommandDelegate;->cancel()V

    .line 48
    return-void
.end method
