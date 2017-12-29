.class Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;
.super Ljava/lang/Object;
.source "ScreenSizePreviewSettingsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TileItem"
.end annotation


# instance fields
.field public final mCategory:Ljava/lang/String;

.field public final mIcon:Landroid/graphics/drawable/Drawable;

.field public final mSummary:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mTitle:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mSummary:Ljava/lang/String;

    .line 243
    iput-object p3, p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mCategory:Ljava/lang/String;

    .line 244
    iput-object p4, p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 240
    return-void
.end method
