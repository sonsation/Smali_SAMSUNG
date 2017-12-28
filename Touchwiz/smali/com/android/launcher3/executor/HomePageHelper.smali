.class Lcom/android/launcher3/executor/HomePageHelper;
.super Ljava/lang/Object;
.source "HomePageHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/android/launcher3/executor/HomePageMoveStateHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/executor/HomePageHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method static findAvailablePageAndCreateNewWhenFull(Lcom/android/launcher3/proxy/LauncherProxy;I)I
    .locals 6
    .param p0, "proxy"    # Lcom/android/launcher3/proxy/LauncherProxy;
    .param p1, "page"    # I

    .prologue
    const/4 v5, 0x1

    .line 16
    sget-object v2, Lcom/android/launcher3/executor/HomePageHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findAvailablePageAndCreateNewWhenFull: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "hasPageEmptySlot":Z
    move v1, p1

    .line 21
    .local v1, "newPage":I
    if-gez v1, :cond_0

    .line 22
    const/4 v1, 0x0

    .line 26
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->isHomeValidPage(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v5, v5}, Lcom/android/launcher3/proxy/LauncherProxy;->hasHomeEmptySpace(IIII)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 28
    const/4 v0, 0x1

    .line 35
    :cond_1
    if-nez v0, :cond_2

    .line 36
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/LauncherProxy;->addNewPageInHome()I

    .line 37
    invoke-virtual {p0}, Lcom/android/launcher3/proxy/LauncherProxy;->getHomePageCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 40
    :cond_2
    sget-object v2, Lcom/android/launcher3/executor/HomePageHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new page: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return v1

    .line 31
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
