.class public Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;
.super Ljava/lang/Object;
.source "LocationUseInBackground.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/location/LocationUseInBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public mAppInfo:Landroid/content/pm/ApplicationInfo;

.field public mAppName:Ljava/lang/CharSequence;

.field public mAppSurpportsRuntimePermissions:Z

.field public mGranted:Z

.field public mIsEnable:Z

.field public mPackageinfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/CharSequence;ZZZ)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p3, "appName"    # Ljava/lang/CharSequence;
    .param p4, "isEnable"    # Z
    .param p5, "granted"    # Z
    .param p6, "appSurpportsSuntimePermissions"    # Z

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 418
    iput-object p2, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mPackageinfo:Landroid/content/pm/PackageInfo;

    .line 419
    iput-boolean p4, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mIsEnable:Z

    .line 420
    iput-object p3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppName:Ljava/lang/CharSequence;

    .line 421
    iput-boolean p5, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mGranted:Z

    .line 422
    iput-boolean p6, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppSurpportsRuntimePermissions:Z

    .line 415
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)I
    .locals 3
    .param p1, "another"    # Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, "comparison":I
    iget-object v1, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 429
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 426
    check-cast p1, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->compareTo(Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;)I

    move-result v0

    return v0
.end method
