.class Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "SeslProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;)V
    .locals 0

    .prologue
    .line 2131
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$AccessibilityEventSender;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;

    .prologue
    .line 2131
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$AccessibilityEventSender;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$AccessibilityEventSender;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->sendAccessibilityEvent(I)V

    .line 2134
    return-void
.end method
