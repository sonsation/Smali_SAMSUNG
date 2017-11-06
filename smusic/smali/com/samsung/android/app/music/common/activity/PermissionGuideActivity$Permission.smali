.class final Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;
.super Ljava/lang/Object;
.source "PermissionGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Permission"
.end annotation


# instance fields
.field description:I

.field icon:I

.field layout:I

.field title:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0
    .param p1, "layout"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "icon"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3, "title"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4, "description"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;->layout:I

    .line 125
    iput p2, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;->icon:I

    .line 126
    iput p3, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;->title:I

    .line 127
    iput p4, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;->description:I

    .line 128
    return-void
.end method
