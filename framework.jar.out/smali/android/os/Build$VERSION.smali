.class public Landroid/os/Build$VERSION;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VERSION"
.end annotation


# static fields
.field public static final ACTIVE_CODENAMES:[Ljava/lang/String;

.field private static final ALL_CODENAMES:[Ljava/lang/String;

.field public static final BASE_OS:Ljava/lang/String;

.field public static final CODENAME:Ljava/lang/String;

.field public static final INCREMENTAL:Ljava/lang/String;

.field public static final PREVIEW_SDK_INT:I

.field public static final RELEASE:Ljava/lang/String;

.field public static final RESOURCES_SDK_INT:I

.field public static final SDK:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SDK_INT:I

.field public static final SECURITY_PATCH:Ljava/lang/String;

.field public static final SEM_INT:I

.field public static final SEM_PLATFORM_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    const-string/jumbo v0, "ro.build.version.incremental"

    invoke-static {v0}, Landroid/os/Build;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 164
    const-string/jumbo v0, "ro.build.version.release"

    invoke-static {v0}, Landroid/os/Build;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 169
    const-string/jumbo v0, "ro.build.version.base_os"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->BASE_OS:Ljava/lang/String;

    .line 175
    const-string/jumbo v0, "ro.build.version.security_patch"

    const-string/jumbo v1, ""

    .line 174
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 184
    const-string/jumbo v0, "ro.build.version.sdk"

    invoke-static {v0}, Landroid/os/Build;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 191
    const-string/jumbo v0, "ro.build.version.sdk"

    .line 190
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 212
    const-string/jumbo v0, "ro.build.version.preview_sdk"

    .line 211
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    .line 223
    const-string/jumbo v0, "ro.build.version.sem"

    .line 222
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->SEM_INT:I

    .line 233
    const-string/jumbo v0, "ro.build.version.sep"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    .line 239
    const-string/jumbo v0, "ro.build.version.codename"

    invoke-static {v0}, Landroid/os/Build;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 242
    const-string/jumbo v0, "ro.build.version.all_codenames"

    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Landroid/os/Build;->-wrap0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 241
    sput-object v0, Landroid/os/Build$VERSION;->ALL_CODENAMES:[Ljava/lang/String;

    .line 247
    const-string/jumbo v0, "REL"

    sget-object v1, Landroid/os/Build$VERSION;->ALL_CODENAMES:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    new-array v0, v2, [Ljava/lang/String;

    .line 247
    :goto_0
    sput-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    .line 256
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 153
    return-void

    .line 248
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->ALL_CODENAMES:[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
