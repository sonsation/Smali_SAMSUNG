.class public Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;
.super Ljava/lang/Object;
.source "AbsLoadItemsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadData"
.end annotation


# instance fields
.field public final args:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

.field public final context:Landroid/content/Context;

.field final folderType:I

.field final keyColumnName:Ljava/lang/String;

.field public final parentId:Ljava/lang/String;

.field public final result:Landroid/service/media/MediaBrowserService$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public final subTitleColumnName:Ljava/lang/String;

.field public final titleColumnName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/service/media/MediaBrowserService$Result;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "folderType"    # I
    .param p5, "queryArgs"    # Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .param p6, "keyColumnName"    # Ljava/lang/String;
    .param p7, "titleColumnName"    # Ljava/lang/String;
    .param p8, "subTitleColumnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Landroid/service/media/MediaBrowserService$Result",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;>;",
            "Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    .local p4, "result":Landroid/service/media/MediaBrowserService$Result;, "Landroid/service/media/MediaBrowserService$Result<Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->context:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->parentId:Ljava/lang/String;

    .line 101
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->args:Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .line 102
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->folderType:I

    .line 103
    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->keyColumnName:Ljava/lang/String;

    .line 104
    iput-object p7, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->titleColumnName:Ljava/lang/String;

    .line 105
    iput-object p8, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->subTitleColumnName:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsLoadItemsTask$LoadData;->result:Landroid/service/media/MediaBrowserService$Result;

    .line 107
    return-void
.end method
