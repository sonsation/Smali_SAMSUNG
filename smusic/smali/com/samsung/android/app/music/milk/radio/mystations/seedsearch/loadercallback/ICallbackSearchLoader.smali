.class public interface abstract Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;
.super Ljava/lang/Object;
.source "ICallbackSearchLoader.java"


# static fields
.field public static final RESULT_FROM_LOADER_FAIL:I = 0xbb8

.field public static final RESULT_FROM_LOADER_INTERNAL_ERR:I = 0xfa0

.field public static final RESULT_FROM_LOADER_RESET:I = 0x7d0

.field public static final RESULT_FROM_LOADER_SUCCESS:I = 0x0

.field public static final RESULT_FROM_LOADER_SUCCESS_EMPTY_LIST:I = 0x3e8


# virtual methods
.method public abstract attachServerData(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resultFromLoaderCallback(IIILjava/lang/String;)V
.end method
