.class final synthetic Lcom/android/server/pm/PackageManagerService$-void_updateOverlayMap_java_lang_String_packageName_android_content_pm_PackageParser$Package_targetPkg_boolean_enabled_LambdaImpl2;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_updateOverlayMap_java_lang_String_packageName_android_content_pm_PackageParser$Package_targetPkg_boolean_enabled_LambdaImpl2"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->-com_android_server_pm_PackageManagerService_lambda$6(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
