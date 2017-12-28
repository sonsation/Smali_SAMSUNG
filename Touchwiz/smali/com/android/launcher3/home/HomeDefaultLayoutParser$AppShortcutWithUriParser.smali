.class Lcom/android/launcher3/home/HomeDefaultLayoutParser$AppShortcutWithUriParser;
.super Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;
.source "HomeDefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeDefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppShortcutWithUriParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AppShortcutParser;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V

    return-void
.end method

.method private getSingleSystemActivity(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .line 438
    const/4 v4, 0x0

    .line 439
    .local v4, "systemResolve":Landroid/content/pm/ResolveInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 440
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 442
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v5}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$1200(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 443
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    .line 442
    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 444
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 445
    if-eqz v4, :cond_1

    move-object v4, v6

    .line 456
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "systemResolve":Landroid/content/pm/ResolveInfo;
    :cond_0
    :goto_1
    return-object v4

    .line 448
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "systemResolve":Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "systemResolve":Landroid/content/pm/ResolveInfo;
    check-cast v4, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .restart local v4    # "systemResolve":Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 451
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "systemResolve":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 452
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "HomeDefaultLayoutParser"

    const-string v7, "Unable to get info about resolve results"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v6

    .line 453
    goto :goto_1
.end method

.method private wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 4
    .param p1, "resolved"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 463
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 464
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 465
    .local v1, "tmp":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 466
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    const/4 v2, 0x0

    .line 470
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :goto_1
    return v2

    .line 463
    .restart local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected invalidPackageOrClass(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    const/high16 v11, 0x10000

    const/4 v12, 0x0

    const-wide/16 v8, -0x1

    .line 392
    const-string v10, "uri"

    invoke-static {p1, v10}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 393
    .local v7, "uri":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 394
    const-string v10, "HomeDefaultLayoutParser"

    const-string v11, "Skipping invalid <favorite> with no component or uri"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    :goto_0
    return-wide v8

    .line 400
    :cond_1
    const/4 v10, 0x0

    :try_start_0
    invoke-static {v7, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 406
    .local v4, "metaIntent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v10}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$700(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v4, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 408
    .local v5, "resolved":Landroid/content/pm/ResolveInfo;
    iget-object v10, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v10}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$800(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v4, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 413
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, v5, v0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$AppShortcutWithUriParser;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 415
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$AppShortcutWithUriParser;->getSingleSystemActivity(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 416
    .local v6, "systemApp":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_2

    .line 419
    const-string v10, "HomeDefaultLayoutParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No preference or single system activity found for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 420
    invoke-virtual {v4}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 419
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    .end local v0    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "metaIntent":Landroid/content/Intent;
    .end local v5    # "resolved":Landroid/content/pm/ResolveInfo;
    .end local v6    # "systemApp":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/net/URISyntaxException;
    const-string v10, "HomeDefaultLayoutParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to add meta-favorite: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 423
    .end local v1    # "e":Ljava/net/URISyntaxException;
    .restart local v0    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "metaIntent":Landroid/content/Intent;
    .restart local v5    # "resolved":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "systemApp":Landroid/content/pm/ResolveInfo;
    :cond_2
    move-object v5, v6

    .line 425
    .end local v6    # "systemApp":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-object v2, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 426
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    iget-object v10, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v10}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$900(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 427
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 430
    const/high16 v8, 0x10200000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 433
    iget-object v8, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    iget-object v9, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser$AppShortcutWithUriParser;->this$0:Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    invoke-static {v9}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$1000(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, p2, v9, v3, v12}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->access$1100(Lcom/android/launcher3/home/HomeDefaultLayoutParser;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)J

    move-result-wide v8

    goto/16 :goto_0
.end method
