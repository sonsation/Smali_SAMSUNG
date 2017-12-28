.class public final enum Lcom/android/launcher3/util/Talk;
.super Ljava/lang/Enum;
.source "Talk.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher3/util/Talk;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/util/Talk;

.field public static final enum INSTANCE:Lcom/android/launcher3/util/Talk;


# instance fields
.field private final mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/android/launcher3/util/Talk;

    const-string v1, "INSTANCE"

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/launcher3/util/Talk;-><init>(Ljava/lang/String;ILcom/android/launcher3/LauncherAppState;)V

    sput-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher3/util/Talk;

    sget-object v1, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/launcher3/util/Talk;->$VALUES:[Lcom/android/launcher3/util/Talk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/android/launcher3/LauncherAppState;)V
    .locals 2
    .param p3, "app"    # Lcom/android/launcher3/LauncherAppState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/LauncherAppState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/launcher3/util/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    .line 36
    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/Talk;->mResources:Landroid/content/res/Resources;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/util/Talk;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/android/launcher3/util/Talk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/Talk;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/util/Talk;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/launcher3/util/Talk;->$VALUES:[Lcom/android/launcher3/util/Talk;

    invoke-virtual {v0}, [Lcom/android/launcher3/util/Talk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/util/Talk;

    return-object v0
.end method


# virtual methods
.method public isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher3/util/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher3/util/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postSay(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/util/Talk$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/Talk$1;-><init>(Lcom/android/launcher3/util/Talk;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method

.method public say(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher3/util/Talk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public say(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/launcher3/util/Talk;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must provide a valid string to speak"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    const/16 v1, 0x4000

    .line 51
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 52
    .local v0, "e":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 54
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v1, p0, Lcom/android/launcher3/util/Talk;->mAccessibilityMgr:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 60
    .end local v0    # "e":Landroid/view/accessibility/AccessibilityEvent;
    :cond_1
    return-void
.end method
