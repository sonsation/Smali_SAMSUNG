.class Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ListSelectorHider;
.super Ljava/lang/Object;
.source "SeslListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListSelectorHider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;)V
    .locals 0

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ListSelectorHider;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1323
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow$ListSelectorHider;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslListPopupWindow;->clearListSelection()V

    .line 1328
    return-void
.end method
