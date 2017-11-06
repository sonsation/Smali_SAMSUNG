.class Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$TriggerLongPress;
.super Ljava/lang/Object;
.source "SeslForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$TriggerLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$TriggerLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->onLongPress()V

    .line 365
    return-void
.end method
