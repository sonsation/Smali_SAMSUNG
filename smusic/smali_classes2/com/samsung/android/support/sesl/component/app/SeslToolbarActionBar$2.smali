.class Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$2;
.super Ljava/lang/Object;
.source "SeslToolbarActionBar.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$2;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
