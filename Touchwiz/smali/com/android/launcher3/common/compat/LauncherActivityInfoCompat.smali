.class public abstract Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
.super Ljava/lang/Object;
.source "LauncherActivityInfoCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .locals 1
    .param p0, "info"    # Landroid/content/pm/ResolveInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    new-instance v0, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatV16;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompatV16;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    return-object v0
.end method


# virtual methods
.method public abstract getApplicationInfo()Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public abstract getFirstInstallTime()J
.end method

.method public abstract getIcon(I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;
.end method
