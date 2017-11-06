.class Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;
.super Ljava/lang/Object;
.source "SeslTabHost.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 144
    sparse-switch p2, :sswitch_data_0

    .line 163
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 164
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 151
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;)Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    iget v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->mCurrentTab:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost$1;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTabHost;->playSoundEffect(I)V

    .line 160
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
