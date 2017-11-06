.class public final Lcom/samsung/android/app/music/common/util/TabUtils;
.super Ljava/lang/Object;
.source "TabUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/util/TabUtils$Flag;
    }
.end annotation


# static fields
.field private static final DEFAULT_ALL_TABS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ENABLED_TABS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_POSITION_BIGPOND:I = 0x2

.field private static final DEFAULT_POSITION_HEART:I

.field private static final LEGACY_TABS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static sSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0x10007

    const v5, 0x10004

    const v4, 0x10003

    const v3, 0x10002

    const/4 v2, 0x2

    .line 19
    const-class v0, Lcom/samsung/android/app/music/common/util/TabUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->LEGACY_TABS:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ALL_TABS:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ENABLED_TABS:Ljava/util/List;

    .line 44
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->LEGACY_TABS:Ljava/util/List;

    const v1, 0x10031

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ALL_TABS:Ljava/util/List;

    const v1, 0x10030

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ALL_TABS:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ALL_TABS:Ljava/util/List;

    const v1, 0x110001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ALL_TABS:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ALL_TABS:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ALL_TABS:Ljava/util/List;

    const v1, 0x10006

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ALL_TABS:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ALL_TABS:Ljava/util/List;

    const v1, 0x10008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ENABLED_TABS:Ljava/util/List;

    const v1, 0x10030

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ENABLED_TABS:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ENABLED_TABS:Ljava/util/List;

    const v1, 0x110001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ENABLED_TABS:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ENABLED_TABS:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ENABLED_TABS:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_FW_BIGPOND:Z

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ALL_TABS:Ljava/util/List;

    const v1, 0x1000c

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/music/common/util/TabUtils;->addArrayItem(Ljava/util/List;II)V

    .line 64
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ENABLED_TABS:Ljava/util/List;

    const v1, 0x1000c

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/music/common/util/TabUtils;->addArrayItem(Ljava/util/List;II)V

    .line 66
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addArrayItem(Ljava/util/List;II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static addFlag(II)I
    .locals 1
    .param p0, "baseFlag"    # I
    .param p1, "addFlag"    # I

    .prologue
    .line 127
    or-int v0, p0, p1

    return v0
.end method

.method private static addTabPreferences(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tab"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "flag"    # I

    .prologue
    .line 137
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->getAllTabs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "allTabs":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 139
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 140
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 142
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->getEnabledTabs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "enabledTabs":Ljava/lang/String;
    invoke-static {v2, p1, p2}, Lcom/samsung/android/app/music/common/util/TabUtils;->addTabString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 144
    const-string/jumbo v4, "tab_menu_list"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-static {v2, v0, p1, p2}, Lcom/samsung/android/app/music/common/util/TabUtils;->matchAllTabPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    .line 148
    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/common/util/TabUtils;->addTabString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string/jumbo v4, "tab_menu_list_order"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    .end local v2    # "enabledTabs":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "tab_settings_update"

    const-string/jumbo v5, "tab_settings_update"

    const/4 v6, 0x0

    .line 152
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5, p3}, Lcom/samsung/android/app/music/common/util/TabUtils;->addFlag(II)I

    move-result v5

    .line 151
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    sget-object v4, Lcom/samsung/android/app/music/common/util/TabUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addTabPreferences - allTabs : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tab : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private static addTabString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p0, "tabs"    # Ljava/lang/String;
    .param p1, "tab"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 318
    new-instance v8, Ljava/util/StringTokenizer;

    const-string/jumbo v9, "|"

    invoke-direct {v8, p0, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .local v8, "strToken":Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 320
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 321
    sget-object v9, Lcom/samsung/android/app/music/common/util/TabUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addTabString - tabs is empty - tab : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, p1

    .line 363
    .end local p0    # "tabs":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 324
    .restart local p0    # "tabs":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 325
    .local v3, "hasTab":Z
    new-array v2, v0, [I

    .line 326
    .local v2, "elementSizes":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 327
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "element":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 329
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    aput v9, v2, v4

    .line 333
    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 334
    const/4 v3, 0x1

    .line 339
    .end local v1    # "element":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_4

    .line 340
    sget-object v9, Lcom/samsung/android/app/music/common/util/TabUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addTabString - already has tab : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    .restart local v1    # "element":Ljava/lang/String;
    :cond_2
    add-int/lit8 v9, v4, -0x1

    aget v9, v2, v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v2, v4

    goto :goto_2

    .line 326
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 346
    .end local v1    # "element":Ljava/lang/String;
    :cond_4
    if-nez p2, :cond_5

    .line 347
    const/4 v5, 0x0

    .line 348
    .local v5, "offset":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 358
    .local v7, "str":Ljava/lang/String;
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v6, v5, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 362
    sget-object v9, Lcom/samsung/android/app/music/common/util/TabUtils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addTabString - tabs: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    .end local v5    # "offset":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "str":Ljava/lang/String;
    :cond_5
    if-gt v0, p2, :cond_6

    .line 351
    add-int/lit8 v9, v0, -0x1

    aget v9, v2, v9

    const-string/jumbo v10, "|"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v11, v0, -0x1

    mul-int/2addr v10, v11

    add-int v5, v9, v10

    .line 352
    .restart local v5    # "offset":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "str":Ljava/lang/String;
    goto :goto_3

    .line 354
    .end local v5    # "offset":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_6
    add-int/lit8 v9, p2, -0x1

    aget v9, v2, v9

    const-string/jumbo v10, "|"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    mul-int/2addr v10, p2

    add-int v5, v9, v10

    .line 355
    .restart local v5    # "offset":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "str":Ljava/lang/String;
    goto :goto_3
.end method

.method private static checkInvalidTabPreferences(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 161
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "legacy_tab_settings_clear"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 162
    const-string v4, "music_current_tab"

    const v5, 0x10004

    .line 163
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 162
    invoke-static {v4}, Lcom/samsung/android/app/music/common/util/TabUtils;->checkValidTab(I)Z

    move-result v4

    if-nez v4, :cond_4

    move v1, v3

    .line 164
    .local v1, "requestClearSetting":Z
    :goto_0
    if-nez v1, :cond_0

    const-string/jumbo v4, "tab_menu_list"

    .line 165
    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-static {v4}, Lcom/samsung/android/app/music/common/util/TabUtils;->hasInvalidTab(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    move v1, v3

    .line 166
    :goto_1
    if-nez v1, :cond_1

    const-string/jumbo v4, "tab_menu_list_order"

    .line 167
    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-static {v4}, Lcom/samsung/android/app/music/common/util/TabUtils;->hasInvalidTab(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_1
    move v1, v3

    .line 168
    :goto_2
    if-eqz v1, :cond_2

    .line 169
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->clearTabPreferences(Landroid/content/Context;)Z

    .line 171
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "legacy_tab_settings_clear"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 172
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 174
    .end local v1    # "requestClearSetting":Z
    :cond_3
    return-void

    :cond_4
    move v1, v2

    .line 162
    goto :goto_0

    .restart local v1    # "requestClearSetting":Z
    :cond_5
    move v1, v2

    .line 164
    goto :goto_1

    :cond_6
    move v1, v2

    .line 166
    goto :goto_2
.end method

.method private static checkValidTab(I)Z
    .locals 2
    .param p0, "tab"    # I

    .prologue
    .line 91
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ALL_TABS:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->LEGACY_TABS:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x1000b

    if-eq p0, v0, :cond_0

    const v0, 0x1000c

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static clearTabPreferences(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 204
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "tab_menu_list"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 205
    const-string/jumbo v2, "tab_menu_list_order"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 206
    const-string v2, "music_current_tab"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    const-string/jumbo v2, "tab_settings_update"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 209
    .local v1, "success":Z
    sget-object v2, Lcom/samsung/android/app/music/common/util/TabUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearTabPreferences() - success ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return v1
.end method

.method public static getAllTabs(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "tab_menu_list_order"

    sget-object v2, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ALL_TABS:Ljava/util/List;

    .line 115
    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/TabUtils;->makeSeparatedString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnabledTabs(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "tab_menu_list"

    sget-object v2, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ENABLED_TABS:Ljava/util/List;

    .line 110
    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/TabUtils;->makeSeparatedString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->sSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "music_player_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->sSharedPreferences:Landroid/content/SharedPreferences;

    .line 75
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->sSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static hasFlag(II)Z
    .locals 1
    .param p0, "baseFlag"    # I
    .param p1, "checkFlag"    # I

    .prologue
    .line 123
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasInvalidTab(Ljava/lang/String;)Z
    .locals 3
    .param p0, "tabs"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 96
    if-nez p0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v2, "|"

    invoke-direct {v0, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/TabUtils;->checkValidTab(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isEnabledTab(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listType"    # I

    .prologue
    .line 119
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->getEnabledTabs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isFixedTab(I)Z
    .locals 1
    .param p0, "listType"    # I

    .prologue
    .line 87
    const v0, 0x10004

    if-eq p0, v0, :cond_0

    const v0, 0x110001

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUpdated(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # I

    .prologue
    .line 131
    .line 132
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "tab_settings_update"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 131
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/util/TabUtils;->hasFlag(II)Z

    move-result v0

    return v0
.end method

.method private static makeSeparatedString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "tabs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 307
    .local v1, "tab":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 308
    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 312
    .end local v1    # "tab":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static matchAllTabPosition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p0, "enabledTabs"    # Ljava/lang/String;
    .param p1, "allTabs"    # Ljava/lang/String;
    .param p2, "tab"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 278
    new-instance v5, Ljava/util/StringTokenizer;

    const-string/jumbo v6, "|"

    invoke-direct {v5, p0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .local v5, "strToken":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 280
    .local v0, "count":I
    const/4 v4, 0x0

    .line 281
    .local v4, "prevTab":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 282
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 288
    .end local v1    # "element":Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_2

    move v3, p3

    .line 301
    .end local p3    # "position":I
    .local v3, "position":I
    :goto_1
    return v3

    .line 286
    .end local v3    # "position":I
    .restart local v1    # "element":Ljava/lang/String;
    .restart local p3    # "position":I
    :cond_1
    move-object v4, v1

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    .end local v1    # "element":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/util/StringTokenizer;

    .end local v5    # "strToken":Ljava/util/StringTokenizer;
    const-string/jumbo v6, "|"

    invoke-direct {v5, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .restart local v5    # "strToken":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 294
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 295
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 296
    .restart local v1    # "element":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 297
    add-int/lit8 p3, v2, 0x1

    .end local v1    # "element":Ljava/lang/String;
    :cond_3
    move v3, p3

    .line 301
    .end local p3    # "position":I
    .restart local v3    # "position":I
    goto :goto_1

    .line 294
    .end local v3    # "position":I
    .restart local v1    # "element":Ljava/lang/String;
    .restart local p3    # "position":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static removeLegacyTabPreferences(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x4

    .line 177
    const/4 v4, 0x4

    .line 178
    .local v4, "flag":I
    invoke-static {p0, v9}, Lcom/samsung/android/app/music/common/util/TabUtils;->isUpdated(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 179
    sget-object v6, Lcom/samsung/android/app/music/common/util/TabUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "removeLegacyTabPreferences - already updated"

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 184
    .local v5, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 185
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->getEnabledTabs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/music/common/util/TabUtils;->removeLegacyTabs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "enabledTabs":Ljava/lang/String;
    const-string/jumbo v6, "tab_menu_list"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->getAllTabs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/music/common/util/TabUtils;->removeLegacyTabs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "allTabs":Ljava/lang/String;
    const-string/jumbo v6, "tab_menu_list_order"

    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    const-string v6, "music_current_tab"

    const v7, 0x10004

    .line 190
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 191
    .local v1, "currentTab":I
    sget-object v6, Lcom/samsung/android/app/music/common/util/TabUtils;->LEGACY_TABS:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 192
    const-string v6, "music_current_tab"

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    :cond_1
    const-string/jumbo v6, "tab_settings_update"

    const-string/jumbo v7, "tab_settings_update"

    const/4 v8, 0x0

    .line 195
    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7, v9}, Lcom/samsung/android/app/music/common/util/TabUtils;->addFlag(II)I

    move-result v7

    .line 194
    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 197
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 198
    sget-object v6, Lcom/samsung/android/app/music/common/util/TabUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeLegacyTabPreferences - enabledTabs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", allTabs : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", currentTab: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static removeLegacyTabs(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "tabs"    # Ljava/lang/String;

    .prologue
    .line 258
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v3, "|"

    invoke-direct {v2, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v1, "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 262
    .local v0, "listType":I
    sget-object v3, Lcom/samsung/android/app/music/common/util/TabUtils;->LEGACY_TABS:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 266
    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 270
    .end local v0    # "listType":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 271
    sget-object v3, Lcom/samsung/android/app/music/common/util/TabUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeLegacyTabs - tabs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-object p0
.end method

.method public static resetTabPreferences(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 216
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "tab_menu_list"

    sget-object v2, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ENABLED_TABS:Ljava/util/List;

    .line 217
    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/TabUtils;->makeSeparatedString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    const-string/jumbo v1, "tab_menu_list_order"

    sget-object v2, Lcom/samsung/android/app/music/common/util/TabUtils;->DEFAULT_ALL_TABS:Ljava/util/List;

    .line 219
    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/TabUtils;->makeSeparatedString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 221
    return-void
.end method

.method public static restoreTabPreferences(Landroid/content/Context;Ljava/util/Map;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "tab_menu_list"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 226
    .local v2, "enabledTabs":Ljava/lang/String;
    const-string/jumbo v4, "tab_menu_list_order"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 227
    .local v0, "allTabs":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/TabUtils;->hasInvalidTab(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/TabUtils;->hasInvalidTab(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 234
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->clearTabPreferences(Landroid/content/Context;)Z

    move-result v3

    .line 243
    .local v3, "success":Z
    :goto_1
    sget-object v4, Lcom/samsung/android/app/music/common/util/TabUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restore UI preference : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    .end local v3    # "success":Z
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 237
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "tab_menu_list"

    .line 238
    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/TabUtils;->removeLegacyTabs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 237
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    const-string/jumbo v4, "tab_menu_list_order"

    .line 240
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/TabUtils;->removeLegacyTabs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 239
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    .restart local v3    # "success":Z
    goto :goto_1
.end method

.method public static updateTabPreferences(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 247
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->checkInvalidTabPreferences(Landroid/content/Context;)V

    .line 248
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/TabUtils;->removeLegacyTabPreferences(Landroid/content/Context;)V

    .line 250
    invoke-static {p0, v2}, Lcom/samsung/android/app/music/common/util/TabUtils;->isUpdated(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    const v0, 0x10030

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/music/common/util/TabUtils;->addTabPreferences(Landroid/content/Context;Ljava/lang/String;II)V

    .line 254
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/common/util/TabUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateTabPreferences"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method
