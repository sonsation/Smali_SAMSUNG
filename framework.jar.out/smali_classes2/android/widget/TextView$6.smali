.class Landroid/widget/TextView$6;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->onHoverEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;

.field final synthetic val$inputDevice:Landroid/view/InputDevice;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/view/InputDevice;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TextView;
    .param p2, "val$inputDevice"    # Landroid/view/InputDevice;

    .prologue
    .line 9953
    iput-object p1, p0, Landroid/widget/TextView$6;->this$0:Landroid/widget/TextView;

    iput-object p2, p0, Landroid/widget/TextView$6;->val$inputDevice:Landroid/view/InputDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x4e2a

    .line 9955
    const/4 v0, 0x1

    invoke-static {v0, v1}, Landroid/text/MultiSelection;->setTextViewHovered(ZI)V

    .line 9956
    iget-object v0, p0, Landroid/widget/TextView$6;->val$inputDevice:Landroid/view/InputDevice;

    invoke-virtual {v0, v1}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 9954
    return-void
.end method
