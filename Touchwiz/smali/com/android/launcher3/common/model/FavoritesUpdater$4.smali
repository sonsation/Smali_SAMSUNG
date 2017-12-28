.class Lcom/android/launcher3/common/model/FavoritesUpdater$4;
.super Ljava/lang/Object;
.source "FavoritesUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/model/FavoritesUpdater;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$items:Ljava/util/ArrayList;

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field final synthetic val$valuesList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/model/FavoritesUpdater;Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/model/FavoritesUpdater;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$4;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iput-object p2, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$4;->val$items:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$4;->val$valuesList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$4;->val$stackTrace:[Ljava/lang/StackTraceElement;

    iput-object p5, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$4;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 156
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v6, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v9, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$4;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 158
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 159
    iget-object v9, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$4;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 160
    .local v3, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 161
    .local v4, "itemId":J
    invoke-static {v4, v5}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v7

    .line 162
    .local v7, "uri":Landroid/net/Uri;
    iget-object v9, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$4;->val$valuesList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 164
    .local v8, "values":Landroid/content/ContentValues;
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v9, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$4;->this$0:Lcom/android/launcher3/common/model/FavoritesUpdater;

    iget-object v10, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$4;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v9, v3, v4, v5, v10}, Lcom/android/launcher3/common/model/FavoritesUpdater;->access$400(Lcom/android/launcher3/common/model/FavoritesUpdater;Lcom/android/launcher3/common/base/item/ItemInfo;J[Ljava/lang/StackTraceElement;)V

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v4    # "itemId":J
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_0
    :try_start_0
    iget-object v9, p0, Lcom/android/launcher3/common/model/FavoritesUpdater$4;->val$cr:Landroid/content/ContentResolver;

    const-string v10, "com.sec.android.app.launcher.settings"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_1
    return-void

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
