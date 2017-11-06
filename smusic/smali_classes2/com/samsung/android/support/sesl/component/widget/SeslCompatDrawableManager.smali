.class public final Lcom/samsung/android/support/sesl/component/widget/SeslCompatDrawableManager;
.super Ljava/lang/Object;
.source "SeslCompatDrawableManager.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslCompatDrawableManager$ColorFilterLruCache;
    }
.end annotation


# static fields
.field private static final COLOR_FILTER_CACHE:Lcom/samsung/android/support/sesl/component/widget/SeslCompatDrawableManager$ColorFilterLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatDrawableManager$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatDrawableManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatDrawableManager;->COLOR_FILTER_CACHE:Lcom/samsung/android/support/sesl/component/widget/SeslCompatDrawableManager$ColorFilterLruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "color"    # I
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 59
    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslCompatDrawableManager;->COLOR_FILTER_CACHE:Lcom/samsung/android/support/sesl/component/widget/SeslCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatDrawableManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 61
    .local v0, "filter":Landroid/graphics/PorterDuffColorFilter;
    if-nez v0, :cond_0

    .line 63
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .end local v0    # "filter":Landroid/graphics/PorterDuffColorFilter;
    invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 64
    .restart local v0    # "filter":Landroid/graphics/PorterDuffColorFilter;
    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/SeslCompatDrawableManager;->COLOR_FILTER_CACHE:Lcom/samsung/android/support/sesl/component/widget/SeslCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatDrawableManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 67
    :cond_0
    return-object v0
.end method
