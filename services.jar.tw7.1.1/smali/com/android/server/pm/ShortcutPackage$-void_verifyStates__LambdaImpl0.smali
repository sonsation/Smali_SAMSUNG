.class final synthetic Lcom/android/server/pm/ShortcutPackage$-void_verifyStates__LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutPackage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_verifyStates__LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    invoke-static {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->-com_android_server_pm_ShortcutPackage_lambda$4(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I

    move-result v0

    return v0
.end method
