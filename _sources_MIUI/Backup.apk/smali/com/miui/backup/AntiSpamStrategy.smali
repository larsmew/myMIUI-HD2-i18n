.class abstract Lcom/miui/backup/AntiSpamStrategy;
.super Lcom/miui/backup/BackupRestoreStrategy;
.source "BackupRestoreStrategy.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mController:Lcom/miui/milk/control/local/AntiSpamController;

.field protected mDataFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 851
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreStrategy;-><init>()V

    .line 847
    iput-object v0, p0, Lcom/miui/backup/AntiSpamStrategy;->mController:Lcom/miui/milk/control/local/AntiSpamController;

    .line 848
    iput-object v0, p0, Lcom/miui/backup/AntiSpamStrategy;->mDataFile:Ljava/io/File;

    .line 849
    iput-object v0, p0, Lcom/miui/backup/AntiSpamStrategy;->mContext:Landroid/content/Context;

    .line 852
    iput-object p3, p0, Lcom/miui/backup/AntiSpamStrategy;->mContext:Landroid/content/Context;

    .line 853
    new-instance v0, Lcom/miui/milk/control/local/AntiSpamController;

    iget-object v1, p0, Lcom/miui/backup/AntiSpamStrategy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/milk/control/local/AntiSpamController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/AntiSpamStrategy;->mController:Lcom/miui/milk/control/local/AntiSpamController;

    .line 854
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/backup/AntiSpamStrategy;->mDataFile:Ljava/io/File;

    .line 855
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 859
    invoke-super {p0}, Lcom/miui/backup/BackupRestoreStrategy;->cancel()V

    .line 860
    iget-object v0, p0, Lcom/miui/backup/AntiSpamStrategy;->mController:Lcom/miui/milk/control/local/AntiSpamController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/AntiSpamController;->cancel()V

    .line 861
    return-void
.end method
