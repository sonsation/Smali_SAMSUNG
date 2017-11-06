.class Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper$1;
.super Ljava/lang/Object;
.source "SeslMenuPopupHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper$1;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper$1;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->onDismiss()V

    .line 337
    return-void
.end method
