.class Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$1;
.super Ljava/lang/Object;
.source "SeslActionBarDrawerToggle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->toggle()V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$1;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
