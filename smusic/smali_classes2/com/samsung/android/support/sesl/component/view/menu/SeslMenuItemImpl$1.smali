.class Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl$1;
.super Ljava/lang/Object;
.source "SeslMenuItemImpl.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setSupportActionProvider(Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;)Lcom/samsung/android/support/sesl/core/view/SeslSupportMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl$1;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 661
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl$1;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl$1;->this$0:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemVisibleChanged(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)V

    .line 662
    return-void
.end method
