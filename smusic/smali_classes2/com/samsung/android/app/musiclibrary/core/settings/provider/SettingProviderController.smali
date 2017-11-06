.class public final Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;
.super Ljava/lang/Object;
.source "SettingProviderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;
    }
.end annotation


# static fields
.field private static final CLASSNAME:Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final SETTING_TABLE_NAME:Ljava/lang/String; = "setting"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDB:Landroid/database/sqlite/SQLiteDatabase;

.field private final mUriHelper:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->CLASSNAME:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getSettingUriHelper()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->CONTENT_URI:Landroid/net/Uri;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getSettingUriHelper()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->mUriHelper:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;

    .line 45
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController$SettingDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->CLASSNAME:Ljava/lang/String;

    return-object v0
.end method

.method private combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p2, "userArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "prepend":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 104
    .local v2, "preSize":I
    if-nez v2, :cond_0

    .line 116
    .end local p2    # "userArgs":[Ljava/lang/String;
    :goto_0
    return-object p2

    .line 108
    .restart local p2    # "userArgs":[Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    array-length v3, p2

    .line 109
    .local v3, "userSize":I
    :goto_1
    add-int v4, v2, v3

    new-array v0, v4, [Ljava/lang/String;

    .line 110
    .local v0, "combined":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 111
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "combined":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "userSize":I
    :cond_1
    move v3, v5

    .line 108
    goto :goto_1

    .line 113
    .restart local v0    # "combined":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v3    # "userSize":I
    :cond_2
    if-eqz p2, :cond_3

    .line 114
    invoke-static {p2, v5, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    move-object p2, v0

    .line 116
    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 93
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->CLASSNAME:Ljava/lang/String;

    const-string v1, "This function is not supported. So do not call this."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->mUriHelper:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 76
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->mUriHelper:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;->match(Landroid/net/Uri;)I

    move-result v0

    .line 79
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 89
    :cond_0
    :goto_0
    return-object p1

    .line 81
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "setting"

    invoke-virtual {v1, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 82
    .local v2, "rowId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 51
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 54
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v8, "prependArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->mUriHelper:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderUriHelper;->match(Landroid/net/Uri;)I

    move-result v9

    .line 56
    .local v9, "uriMatch":I
    packed-switch v9, :pswitch_data_0

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v8, p4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v2, p2

    move-object v3, p3

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 58
    :pswitch_0
    const-string/jumbo v1, "setting"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 59
    const-string v1, "name=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingUtils;->getKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 98
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingProviderController;->CLASSNAME:Ljava/lang/String;

    const-string v1, "This function is not supported. So do not call this."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    return v0
.end method
