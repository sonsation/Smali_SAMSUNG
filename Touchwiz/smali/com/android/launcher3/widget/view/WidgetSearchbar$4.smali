.class Lcom/android/launcher3/widget/view/WidgetSearchbar$4;
.super Ljava/lang/Object;
.source "WidgetSearchbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/view/WidgetSearchbar;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/widget/view/WidgetSearchbar;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$4;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$4;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->openKeyboard()V

    .line 228
    const-string v0, "WidgetSearchbar"

    const-string v1, "onWindowFocusChanged : call showSoftInput"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method
