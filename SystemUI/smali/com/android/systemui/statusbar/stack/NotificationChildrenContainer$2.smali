.class Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;
.super Ljava/lang/Object;
.source "NotificationChildrenContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

.field final synthetic val$removedOverflowNumber:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
    .param p2, "val$removedOverflowNumber"    # Landroid/view/View;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;->this$0:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;->val$removedOverflowNumber:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;->this$0:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;->val$removedOverflowNumber:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeTransientView(Landroid/view/View;)V

    .line 352
    return-void
.end method
