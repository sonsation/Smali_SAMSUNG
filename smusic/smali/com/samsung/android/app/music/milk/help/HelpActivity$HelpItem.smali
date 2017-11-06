.class Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;
.super Ljava/lang/Object;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/help/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpItem"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/help/HelpActivity;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/help/HelpActivity;ILjava/lang/String;)V
    .locals 1
    .param p2, "titleId"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;->this$0:Lcom/samsung/android/app/music/milk/help/HelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/help/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;->title:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;->description:Ljava/lang/String;

    .line 130
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;->title:Ljava/lang/String;

    return-object v0
.end method
