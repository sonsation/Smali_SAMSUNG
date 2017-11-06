.class Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$2;
.super Ljava/lang/Object;
.source "SeslToolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->showOverflowMenu()Z

    .line 227
    return-void
.end method
