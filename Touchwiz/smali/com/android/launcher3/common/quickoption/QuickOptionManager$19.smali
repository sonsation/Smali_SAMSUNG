.class Lcom/android/launcher3/common/quickoption/QuickOptionManager$19;
.super Ljava/lang/Object;
.source "QuickOptionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionManager;->startBounceAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$19;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$19;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$400(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$19;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$400(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/ItemBounceAnimation;->animate()V

    .line 674
    :cond_0
    return-void
.end method
