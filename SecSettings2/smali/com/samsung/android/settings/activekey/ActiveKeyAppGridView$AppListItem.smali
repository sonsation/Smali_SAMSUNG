.class public Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;
.super Ljava/lang/Object;
.source "ActiveKeyAppGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AppListItem"
.end annotation


# instance fields
.field public mActivityName:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIsEnabled:Z

.field public mLabel:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "activityname"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "checked"    # Z
    .param p6, "enabled"    # Z

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mPackageName:Ljava/lang/String;

    .line 491
    iput-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mActivityName:Ljava/lang/String;

    .line 492
    iput-object p3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mLabel:Ljava/lang/String;

    .line 493
    iput-object p4, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 494
    iput-boolean p6, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mIsEnabled:Z

    .line 489
    return-void
.end method
