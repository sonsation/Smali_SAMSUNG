.class Lcom/android/systemui/statusbar/phone/NavigationBarView$2$1;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView$2;->onDockedStackExistsChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

.field final synthetic val$exists:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView$2;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/NavigationBarView$2;
    .param p2, "val$exists"    # Z

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2$1;->val$exists:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2$1;->val$exists:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->-wrap0(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2$1;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateBackgroundWhenDockedStackExists()V

    .line 529
    return-void
.end method
